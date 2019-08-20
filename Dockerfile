FROM ubuntu:18.04
MAINTAINER Arnis Lielturks <arnis@example.com>

# Install all the dependencies
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y libgl1-mesa-dev git cmake g++ libx11-dev \
    && apt-get purge --auto-remove -y && apt-get clean

# Clone the Urho repo and remove all the samples
RUN git clone https://github.com/urho3d/Urho3D.git /Urho3D && \
    git checkout p2p-multiplayer && \
	cd /Urho3D/Source/Samples && \
	# Remove all samples
	ls -la | awk '{print $9}' | grep _ | xargs rm -r

# Copy P2P sample files
COPY Source/Samples/54_P2PMultiplayerExtended /Urho3D/Source/Samples/54_P2PMultiplayerExtended

# Compile the engine with NAT server sample
RUN cd /Urho3D && \
	g++ --version && \
    bash script/cmake_generic.sh build -DURHO3D_SAMPLES=1 -DURHO3D_TOOLS=0 -DURHO3D_HASH_DEBUG=0 -DURHO3D_PROFILING=0 -DURHO3D_64BIT=1 -DURHO3D_TESTING=0 -DURHO3D_DEPLOYMENT_TARGET=generic && \
    cd build && make -j $(nproc) && \
    cd ..

WORKDIR /Urho3D

FROM alpine
ARG BUILD_TYPE
RUN if [ "$BUILD_TYPE" = "debug" ]; then echo "Debug mode"; fi
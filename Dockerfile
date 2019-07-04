FROM mcr.microsoft.com/dotnet/core/sdk:2.1
WORKDIR /bionitio
COPY . .

RUN dotnet restore
RUN dotnet publish --runtime linux-x64
ENV PATH "/bionitio/bin/Debug/netcoreapp2.0/linux-x64/publish/bionitio:${PATH}"
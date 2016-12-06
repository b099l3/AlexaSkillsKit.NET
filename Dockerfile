FROM microsoft/dotnet

COPY . /app

WORKDIR /app/src/AlexaSkillsKit.Sample

RUN ["dotnet", "restore"]

RUN ["dotnet", "build"]

EXPOSE 5000/tcp

CMD ["dotnet", "run", "--server.urls", "http://*:5000"]
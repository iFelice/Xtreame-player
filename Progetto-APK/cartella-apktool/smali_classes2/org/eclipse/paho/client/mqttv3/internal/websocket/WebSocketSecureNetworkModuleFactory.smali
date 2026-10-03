.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModuleFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/spi/NetworkModuleFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNetworkModule(Ljava/net/URI;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x1bb

    .line 13
    .line 14
    const/16 v4, 0x1bb

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v0

    .line 18
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSocketFactory()Ljavax/net/SocketFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v7, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;

    .line 26
    .line 27
    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1, v7}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->initialize(Ljava/util/Properties;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0, v7}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v8, v0

    .line 44
    move-object v0, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    move-object v8, v7

    .line 51
    :goto_1
    new-instance v9, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModule;

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getCustomWebSocketHeaders()Ljava/util/Properties;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    move-object v0, v9

    .line 65
    move-object v5, p3

    .line 66
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModule;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Properties;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v9, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setSSLhandshakeTimeout(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v9, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isHttpsHostnameVerificationEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v9, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setHttpsHostnameVerificationEnabled(Z)V

    .line 88
    .line 89
    .line 90
    if-eqz v8, :cond_3

    .line 91
    .line 92
    invoke-virtual {v8, v7}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v9, p1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setEnabledCiphers([Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-object v9

    .line 102
    :cond_4
    const/16 p1, 0x7d69

    .line 103
    .line 104
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    throw p1
.end method

.method public getSupportedUriSchemes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "wss"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public validateURI(Ljava/net/URI;)V
    .locals 0

    return-void
.end method

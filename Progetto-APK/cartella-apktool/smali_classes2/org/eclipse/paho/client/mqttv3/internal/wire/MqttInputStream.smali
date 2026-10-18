.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private bais:Ljava/io/ByteArrayOutputStream;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private in:Ljava/io/DataInputStream;

.field private final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private packet:[B

.field private packetLen:I

.field private remLen:I


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->CLASS_NAME:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 19
    .line 20
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 21
    .line 22
    new-instance p1, Ljava/io/DataInputStream;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 28
    .line 29
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 38
    .line 39
    return-void
.end method

.method private readFully()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packetLen:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 11
    .line 12
    sub-int/2addr v2, v1

    .line 13
    if-ltz v2, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 20
    .line 21
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packet:[B

    .line 22
    .line 23
    add-int v5, v0, v1

    .line 24
    .line 25
    sub-int v6, v2, v1

    .line 26
    .line 27
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 28
    .line 29
    .line 30
    move-result v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-ltz v3, :cond_1

    .line 32
    .line 33
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedBytes(I)V

    .line 36
    .line 37
    .line 38
    add-int/2addr v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packetLen:I

    .line 48
    .line 49
    add-int/2addr v2, v1

    .line 50
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packetLen:I

    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readMqttWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 5
    .line 6
    if-gez v3, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedBytes(I)V

    .line 22
    .line 23
    .line 24
    ushr-int/lit8 v4, v3, 0x4

    .line 25
    .line 26
    and-int/lit8 v4, v4, 0xf

    .line 27
    .line 28
    int-to-byte v4, v4

    .line 29
    if-lt v4, v0, :cond_0

    .line 30
    .line 31
    const/16 v5, 0xe

    .line 32
    .line 33
    if-gt v4, v5, :cond_0

    .line 34
    .line 35
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 36
    .line 37
    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->getValue()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 46
    .line 47
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 53
    .line 54
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 55
    .line 56
    int-to-long v4, v4

    .line 57
    invoke-static {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodeMBI(J)[B

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 71
    .line 72
    add-int/2addr v3, v4

    .line 73
    new-array v3, v3, [B

    .line 74
    .line 75
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packet:[B

    .line 76
    .line 77
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packetLen:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/16 v0, 0x7d6c

    .line 81
    .line 82
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    throw v0

    .line 87
    :cond_1
    :goto_0
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 88
    .line 89
    if-ltz v3, :cond_2

    .line 90
    .line 91
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->readFully()V

    .line 92
    .line 93
    .line 94
    const/4 v3, -0x1

    .line 95
    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->remLen:I

    .line 96
    .line 97
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->bais:Ljava/io/ByteArrayOutputStream;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packet:[B

    .line 104
    .line 105
    array-length v5, v3

    .line 106
    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->packet:[B

    .line 110
    .line 111
    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage([B)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 116
    .line 117
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->CLASS_NAME:Ljava/lang/String;

    .line 118
    .line 119
    const-string v5, "readMqttWireMessage"

    .line 120
    .line 121
    const-string v6, "301"

    .line 122
    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v2, v0, v1

    .line 126
    .line 127
    invoke-interface {v3, v4, v5, v6, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :catch_0
    :cond_2
    return-object v2
.end method

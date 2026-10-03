.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
.source "SourceFile"


# instance fields
.field private grantedQos:[I


# direct methods
.method public constructor <init>(B[B)V
    .locals 2

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;-><init>(B)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->msgId:I

    .line 21
    .line 22
    array-length p1, p2

    .line 23
    add-int/lit8 p1, p1, -0x2

    .line 24
    .line 25
    new-array p1, p1, [I

    .line 26
    .line 27
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->grantedQos:[I

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 p2, 0x0

    .line 34
    :goto_0
    const/4 v1, -0x1

    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->grantedQos:[I

    .line 42
    .line 43
    aput p1, v1, p2

    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_0
.end method


# virtual methods
.method public getGrantedQos()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->grantedQos:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getVariableHeader()[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, " granted Qos"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->grantedQos:[I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-lt v3, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    aget v4, v1, v3

    .line 30
    .line 31
    const-string v5, " "

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0
.end method

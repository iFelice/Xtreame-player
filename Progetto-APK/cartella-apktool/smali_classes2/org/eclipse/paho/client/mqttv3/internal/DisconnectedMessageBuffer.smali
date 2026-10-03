.class public Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final bufLock:Ljava/lang/Object;

.field private buffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/paho/client/mqttv3/BufferedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private bufferOpts:Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

.field private callback:Lorg/eclipse/paho/client/mqttv3/internal/IDisconnectedBufferCallback;

.field private log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private messageDiscardedCallBack:Lorg/eclipse/paho/client/mqttv3/internal/IDiscardedBufferMessageCallback;

.field private mycount:I


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->CLASS_NAME:Ljava/lang/String;

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
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->mycount:I

    .line 29
    .line 30
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufferOpts:Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public deleteMessage(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public getMessage(I)Lorg/eclipse/paho/client/mqttv3/BufferedMessage;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lorg/eclipse/paho/client/mqttv3/BufferedMessage;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public getMessageCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public isPersistBuffer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufferOpts:Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->isPersistBuffer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public putMessage(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->setToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setMessageID(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/BufferedMessage;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/BufferedMessage;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufferOpts:Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->getBufferSize()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ge p2, v1, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->bufferOpts:Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    .line 46
    .line 47
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;->isDeleteOldestMessages()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->messageDiscardedCallBack:Lorg/eclipse/paho/client/mqttv3/internal/IDiscardedBufferMessageCallback;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lorg/eclipse/paho/client/mqttv3/BufferedMessage;

    .line 65
    .line 66
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->messageDiscardedCallBack:Lorg/eclipse/paho/client/mqttv3/internal/IDiscardedBufferMessageCallback;

    .line 67
    .line 68
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/BufferedMessage;->getMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {v2, p2}, Lorg/eclipse/paho/client/mqttv3/internal/IDiscardedBufferMessageCallback;->messageDiscarded(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    monitor-exit p1

    .line 86
    return-void

    .line 87
    :cond_3
    new-instance p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 88
    .line 89
    const/16 v0, 0x7dcb

    .line 90
    .line 91
    invoke-direct {p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 92
    .line 93
    .line 94
    throw p2

    .line 95
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p2
.end method

.method public run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 3
    .line 4
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->CLASS_NAME:Ljava/lang/String;

    .line 5
    .line 6
    const-string v3, "516"

    .line 7
    .line 8
    const-string v4, "run"

    .line 9
    .line 10
    invoke-interface {v1, v2, v4, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->getMessageCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->getMessage(I)Lorg/eclipse/paho/client/mqttv3/BufferedMessage;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->callback:Lorg/eclipse/paho/client/mqttv3/internal/IDisconnectedBufferCallback;

    .line 25
    .line 26
    invoke-interface {v2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/IDisconnectedBufferCallback;->publishBufferedMessage(Lorg/eclipse/paho/client/mqttv3/BufferedMessage;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->deleteMessage(I)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v3, 0x7dca

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    const-wide/16 v1, 0x64

    .line 43
    .line 44
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_1
    nop

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 51
    .line 52
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->CLASS_NAME:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v6, 0x2

    .line 67
    new-array v6, v6, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v5, v6, v0

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    aput-object v1, v6, v0

    .line 73
    .line 74
    const-string v0, "519"

    .line 75
    .line 76
    invoke-interface {v2, v3, v4, v0, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void
.end method

.method public setMessageDiscardedCallBack(Lorg/eclipse/paho/client/mqttv3/internal/IDiscardedBufferMessageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->messageDiscardedCallBack:Lorg/eclipse/paho/client/mqttv3/internal/IDiscardedBufferMessageCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setPublishCallback(Lorg/eclipse/paho/client/mqttv3/internal/IDisconnectedBufferCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;->callback:Lorg/eclipse/paho/client/mqttv3/internal/IDisconnectedBufferCallback;

    .line 2
    .line 3
    return-void
.end method

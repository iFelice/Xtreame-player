.class public Lorg/eclipse/paho/client/mqttv3/internal/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.Token"


# instance fields
.field private callback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

.field private volatile completed:Z

.field private exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private key:Ljava/lang/String;

.field private log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field protected message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private messageID:I

.field private notified:Z

.field private pendingComplete:Z

.field private response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

.field private final responseLock:Ljava/lang/Object;

.field private sent:Z

.field private final sentLock:Ljava/lang/Object;

.field private topics:[Ljava/lang/String;

.field private userContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 5
    .line 6
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->pendingComplete:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sent:Z

    .line 20
    .line 21
    new-instance v1, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 37
    .line 38
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 39
    .line 40
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 41
    .line 42
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->topics:[Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 45
    .line 46
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->callback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 47
    .line 48
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->userContext:Ljava/lang/Object;

    .line 49
    .line 50
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->messageID:I

    .line 51
    .line 52
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notified:Z

    .line 53
    .line 54
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public checkResult()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->callback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getException()Lorg/eclipse/paho/client/mqttv3/MqttException;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGrantedQos()[I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 5
    .line 6
    instance-of v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->getGrantedQos()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageID()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->messageID:I

    .line 2
    .line 3
    return v0
.end method

.method public getResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionPresent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getSessionPresent()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public getTopics()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->topics:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->userContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 2
    .line 3
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCompletePending()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->pendingComplete:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInUse()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->isComplete()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isNotified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notified:Z

    .line 2
    .line 3
    return v0
.end method

.method public markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "markComplete"

    .line 6
    .line 7
    const-string v3, "404"

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x3

    .line 14
    new-array v5, v5, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    aput-object v4, v5, v6

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object p1, v5, v4

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    aput-object p2, v5, v6

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->pendingComplete:Z

    .line 42
    .line 43
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 44
    .line 45
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method public notifyComplete()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "notifyComplete"

    .line 6
    .line 7
    const-string v3, "404"

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 14
    .line 15
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    new-array v7, v7, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    aput-object v4, v7, v8

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aput-object v5, v7, v4

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    aput-object v6, v7, v5

    .line 28
    .line 29
    invoke-interface {v0, v1, v2, v3, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->pendingComplete:Z

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    .line 44
    .line 45
    iput-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->pendingComplete:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iput-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->pendingComplete:Z

    .line 51
    .line 52
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 55
    .line 56
    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v1

    .line 61
    :try_start_1
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sent:Z

    .line 62
    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    throw v0

    .line 73
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw v1
.end method

.method public notifySent()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "notifySent"

    .line 6
    .line 7
    const-string v3, "403"

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    new-array v6, v5, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v4, v6, v7

    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_0
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 27
    .line 28
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    :try_start_1
    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sent:Z

    .line 35
    .line 36
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    throw v1
.end method

.method public reset()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->isInUse()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 9
    .line 10
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object v3, v4, v0

    .line 20
    .line 21
    const-string v3, "reset"

    .line 22
    .line 23
    const-string v5, "410"

    .line 24
    .line 25
    invoke-interface {v1, v2, v3, v5, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 30
    .line 31
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    .line 32
    .line 33
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 34
    .line 35
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sent:Z

    .line 36
    .line 37
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 38
    .line 39
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->userContext:Ljava/lang/Object;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 43
    .line 44
    const/16 v1, 0x7dc9

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->callback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setClient(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 2
    .line 3
    return-void
.end method

.method public setException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 2
    .line 3
    return-void
.end method

.method public setMessageID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->messageID:I

    .line 2
    .line 3
    return-void
.end method

.method public setNotified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notified:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTopics([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->topics:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->userContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "key="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, " ,topics="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getTopics()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getTopics()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    array-length v2, v2

    .line 32
    if-lt v1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getTopics()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    aget-object v2, v2, v1

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    const-string v2, ", "

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    const-string v1, " ,usercontext="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getUserContext()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    const-string v1, " ,isComplete="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->isComplete()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    const-string v1, " ,isNotified="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->isNotified()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const-string v1, " ,exception="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    const-string v1, " ,actioncallback="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public waitForCompletion()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->waitForCompletion(J)V

    return-void
.end method

.method public waitForCompletion(J)V
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v3, 0x2

    aput-object p0, v4, v3

    const-string v6, "waitForCompletion"

    const-string v7, "407"

    invoke-interface {v0, v1, v6, v7, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p0, v0, v2

    const-string p2, "406"

    invoke-interface {p1, v1, v6, p2, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 7
    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->checkResult()Z

    return-void
.end method

.method public waitForResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v0

    return-object v0
.end method

.method public waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "waitForResponse"

    const-string v7, "400"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    iget-boolean v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sent:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v0

    iget-boolean v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v9, :cond_0

    const-string v10, "false"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const-string v10, "true"

    :goto_0
    const/4 v11, 0x4

    aput-object v10, v8, v11

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    const/4 v11, 0x5

    aput-object v10, v8, v11

    const/4 v10, 0x6

    aput-object p0, v8, v10

    invoke-interface/range {v4 .. v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4
    :cond_1
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    if-eqz v4, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    if-nez v4, :cond_4

    .line 6
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "waitForResponse"

    const-string v9, "408"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v4, p1, v5

    if-gtz v4, :cond_3

    .line 7
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    .line 8
    :cond_3
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    invoke-virtual {v4, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    :try_start_2
    new-instance v7, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v7, v4}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 10
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->completed:Z

    if-nez v4, :cond_1

    .line 11
    iget-object v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v12, :cond_5

    cmp-long v4, p1, v5

    if-lez v4, :cond_1

    .line 12
    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "waitForResponse"

    const-string v4, "402"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    invoke-interface {p1, p2, v3, v4, v0}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    return-object p1

    .line 15
    :cond_5
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "waitForResponse"

    const-string v10, "401"

    const/4 v11, 0x0

    invoke-interface/range {v7 .. v12}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw p1

    .line 17
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public waitUntilSent()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->responseLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 8
    .line 9
    if-nez v2, :cond_3

    .line 10
    .line 11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :catch_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sent:Z

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    throw v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    throw v1

    .line 31
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    return-void

    .line 33
    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 34
    .line 35
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/Token;->CLASS_NAME:Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "waitUntilSent"

    .line 38
    .line 39
    const-string v4, "409"

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const/4 v7, 0x0

    .line 49
    aput-object v6, v5, v7

    .line 50
    .line 51
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/Token;->sentLock:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception v2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :try_start_4
    throw v2

    .line 63
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    :try_start_5
    throw v2

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    throw v1
.end method

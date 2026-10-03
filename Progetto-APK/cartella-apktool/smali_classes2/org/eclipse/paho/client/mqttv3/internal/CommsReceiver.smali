.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.CommsReceiver"


# instance fields
.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

.field private in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

.field private final lifecycle:Ljava/lang/Object;

.field private log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private recThread:Ljava/lang/Thread;

.field private receiverFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

.field private threadName:Ljava/lang/String;

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 5
    .line 6
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 13
    .line 14
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 29
    .line 30
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 31
    .line 32
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 33
    .line 34
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    .line 35
    .line 36
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 37
    .line 38
    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Ljava/io/InputStream;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 44
    .line 45
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 46
    .line 47
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 48
    .line 49
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, p1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public isReceiving()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 5
    .line 6
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RECEIVING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public isRunning()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 5
    .line 6
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RECEIVING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 11
    .line 12
    if-ne v1, v3, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->threadName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 16
    .line 17
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 20
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 23
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 24
    .line 25
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    .line 26
    const/4 v0, 0x0

    .line 27
    move-object v2, v0

    .line 28
    :goto_0
    :try_start_3
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 29
    .line 30
    if-ne v1, v3, :cond_a

    .line 31
    .line 32
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_0
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 39
    .line 40
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 41
    .line 42
    const-string v5, "run"

    .line 43
    .line 44
    const-string v6, "852"

    .line 45
    .line 46
    invoke-interface {v1, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 50
    .line 51
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->available()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v1
    :try_end_4
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    :try_start_5
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RECEIVING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 61
    .line 62
    iput-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 63
    .line 64
    monitor-exit v1

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v3

    .line 67
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    :try_start_6
    throw v3

    .line 69
    :catchall_1
    move-exception v0

    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :catch_0
    move-exception v1

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :catch_1
    move-exception v1

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 79
    .line 80
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->readMqttWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v5
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 87
    :try_start_7
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 88
    .line 89
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 90
    :try_start_8
    instance-of v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .line 91
    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 95
    .line 96
    invoke-virtual {v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    monitor-enter v2
    :try_end_8
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 103
    :try_start_9
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 104
    .line 105
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .line 106
    .line 107
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;)V

    .line 108
    .line 109
    .line 110
    monitor-exit v2

    .line 111
    goto :goto_3

    .line 112
    :catchall_2
    move-exception v1

    .line 113
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 114
    :try_start_a
    throw v1

    .line 115
    :cond_2
    instance-of v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    .line 116
    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    instance-of v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    .line 120
    .line 121
    if-nez v5, :cond_4

    .line 122
    .line 123
    instance-of v1, v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    .line 124
    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 129
    .line 130
    const/4 v3, 0x6

    .line 131
    invoke-direct {v1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 136
    .line 137
    const-string v5, "run"

    .line 138
    .line 139
    const-string v6, "857"

    .line 140
    .line 141
    invoke-interface {v1, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    if-eqz v1, :cond_6

    .line 146
    .line 147
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 148
    .line 149
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedMsg(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 154
    .line 155
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_8

    .line 160
    .line 161
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 162
    .line 163
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnecting()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    new-instance v1, Ljava/io/IOException;

    .line 171
    .line 172
    const-string v3, "Connection is lost."

    .line 173
    .line 174
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
    :try_end_a
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 178
    :cond_8
    :goto_3
    :try_start_b
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 181
    :try_start_c
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 182
    .line 183
    monitor-exit v1

    .line 184
    goto :goto_7

    .line 185
    :catchall_3
    move-exception v0

    .line 186
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 187
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 188
    :catchall_4
    move-exception v0

    .line 189
    goto/16 :goto_a

    .line 190
    .line 191
    :catchall_5
    move-exception v1

    .line 192
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 193
    :try_start_f
    throw v1
    :try_end_f
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 194
    :goto_4
    :try_start_10
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 195
    .line 196
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 197
    .line 198
    const-string v5, "run"

    .line 199
    .line 200
    const-string v6, "853"

    .line 201
    .line 202
    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 206
    .line 207
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 208
    .line 209
    if-eq v3, v4, :cond_9

    .line 210
    .line 211
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 212
    .line 213
    monitor-enter v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 214
    :try_start_11
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 215
    .line 216
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 217
    :try_start_12
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 218
    .line 219
    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_9

    .line 224
    .line 225
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 226
    .line 227
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 228
    .line 229
    const/16 v5, 0x7d6d

    .line 230
    .line 231
    invoke-direct {v4, v5, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v2, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :catchall_6
    move-exception v0

    .line 239
    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 240
    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 241
    :cond_9
    :goto_5
    :try_start_15
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 244
    :try_start_16
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 245
    .line 246
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 247
    .line 248
    monitor-exit v1

    .line 249
    goto :goto_7

    .line 250
    :catchall_7
    move-exception v0

    .line 251
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 252
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 253
    :goto_6
    :try_start_18
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 254
    .line 255
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 256
    .line 257
    const-string v5, "run"

    .line 258
    .line 259
    const-string v6, "856"

    .line 260
    .line 261
    const/4 v7, 0x0

    .line 262
    move-object v8, v1

    .line 263
    invoke-interface/range {v3 .. v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 267
    .line 268
    monitor-enter v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 269
    :try_start_19
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 270
    .line 271
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 272
    .line 273
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 274
    :try_start_1a
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 275
    .line 276
    invoke-virtual {v3, v2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 277
    .line 278
    .line 279
    :try_start_1b
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 280
    .line 281
    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 282
    :try_start_1c
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 283
    .line 284
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 285
    .line 286
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 287
    :goto_7
    :try_start_1d
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 288
    .line 289
    monitor-enter v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 290
    :try_start_1e
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 291
    .line 292
    monitor-exit v1

    .line 293
    move-object v1, v3

    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :catchall_8
    move-exception v0

    .line 297
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 298
    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 299
    :catchall_9
    move-exception v0

    .line 300
    :try_start_20
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 301
    :try_start_21
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 302
    :catchall_a
    move-exception v0

    .line 303
    :try_start_22
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 304
    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 305
    :goto_8
    :try_start_24
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 306
    .line 307
    monitor-enter v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    .line 308
    :try_start_25
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 309
    .line 310
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 311
    .line 312
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 313
    :try_start_26
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 314
    :catchall_b
    move-exception v0

    .line 315
    :try_start_27
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 316
    :try_start_28
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    .line 317
    :cond_a
    :goto_9
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 318
    .line 319
    monitor-enter v1

    .line 320
    :try_start_29
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 321
    .line 322
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 323
    .line 324
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 325
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    .line 326
    .line 327
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 328
    .line 329
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 330
    .line 331
    const-string v2, "run"

    .line 332
    .line 333
    const-string v3, "854"

    .line 334
    .line 335
    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :catchall_c
    move-exception v0

    .line 340
    :try_start_2a
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    .line 341
    throw v0

    .line 342
    :catchall_d
    move-exception v1

    .line 343
    :try_start_2b
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 344
    :try_start_2c
    throw v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    .line 345
    :goto_a
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 346
    .line 347
    monitor-enter v1

    .line 348
    :try_start_2d
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 349
    .line 350
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 351
    .line 352
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    .line 353
    throw v0

    .line 354
    :catchall_e
    move-exception v0

    .line 355
    :try_start_2e
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    .line 356
    throw v0

    .line 357
    :catchall_f
    move-exception v1

    .line 358
    :try_start_2f
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    .line 359
    throw v1
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->threadName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 4
    .line 5
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "start"

    .line 8
    .line 9
    const-string v2, "855"

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->current_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 18
    .line 19
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->RUNNING:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    new-instance p2, Ljava/lang/Thread;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p2

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiverFuture:Ljava/util/concurrent/Future;

    .line 49
    .line 50
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->isRunning()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    const-wide/16 p1, 0x64

    .line 59
    .line 60
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    nop

    .line 65
    goto :goto_1

    .line 66
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw p2
.end method

.method public stop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiverFuture:Ljava/util/concurrent/Future;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 16
    .line 17
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "stop"

    .line 20
    .line 21
    const-string v4, "850"

    .line 22
    .line 23
    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->isRunning()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;->STOPPED:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 33
    .line 34
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->target_state:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver$State;

    .line 35
    .line 36
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->isRunning()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 44
    .line 45
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "stop"

    .line 48
    .line 49
    const-string v3, "851"

    .line 50
    .line 51
    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-wide/16 v0, 0x64

    .line 56
    .line 57
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    nop

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw v1
.end method

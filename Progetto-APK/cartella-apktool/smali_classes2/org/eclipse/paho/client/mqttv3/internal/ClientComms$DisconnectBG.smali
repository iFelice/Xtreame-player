.class Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisconnectBG"
.end annotation


# instance fields
.field disconnect:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

.field quiesceTimeout:J

.field final synthetic this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private threadName:Ljava/lang/String;

.field token:Lorg/eclipse/paho/client/mqttv3/MqttToken;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;JLorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->disconnect:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->quiesceTimeout:J

    .line 9
    .line 10
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->threadName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$1(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$2(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "disconnectBG:run"

    .line 23
    .line 24
    const-string v3, "221"

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 30
    .line 31
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$6(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->quiesceTimeout:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesce(J)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 42
    .line 43
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->disconnect:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    .line 44
    .line 45
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 51
    .line 52
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 59
    .line 60
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->isRunning()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 71
    .line 72
    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 73
    .line 74
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->waitUntilSent()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    goto :goto_2

    .line 80
    :catch_0
    nop

    .line 81
    goto :goto_3

    .line 82
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 83
    .line 84
    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 85
    .line 86
    invoke-virtual {v1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 90
    .line 91
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 98
    .line 99
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->isRunning()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_2

    .line 108
    .line 109
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 110
    .line 111
    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 112
    .line 113
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifyComplete()V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 117
    .line 118
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 119
    .line 120
    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 125
    .line 126
    iget-object v2, v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 127
    .line 128
    invoke-virtual {v2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 132
    .line 133
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 140
    .line 141
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->isRunning()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    :cond_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 152
    .line 153
    iget-object v2, v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 154
    .line 155
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifyComplete()V

    .line 156
    .line 157
    .line 158
    :cond_4
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 159
    .line 160
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 161
    .line 162
    invoke-virtual {v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :goto_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->token:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 167
    .line 168
    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    .line 169
    .line 170
    invoke-virtual {v1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 174
    .line 175
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_1

    .line 180
    .line 181
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 182
    .line 183
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->isRunning()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_2

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :goto_4
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MQTT Disc: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->threadName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 28
    .line 29
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$0(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Thread;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 45
    .line 46
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$0(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.class public final LE3/l;
.super LE3/r;
.source "SourceFile"


# instance fields
.field public final synthetic Z:I

.field public final synthetic a0:Lorg/json/JSONObject;

.field public final synthetic b0:LE3/j;


# direct methods
.method public synthetic constructor <init>(LE3/j;I)V
    .locals 0

    .line 1
    iput p2, p0, LE3/l;->Z:I

    .line 2
    .line 3
    iput-object p1, p0, LE3/l;->b0:LE3/j;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, LE3/l;->a0:Lorg/json/JSONObject;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p0, p1, p2}, LE3/r;-><init>(LE3/j;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final Q0()V
    .locals 10

    .line 1
    iget v0, p0, LE3/l;->Z:I

    .line 2
    .line 3
    const-string v1, "customData"

    .line 4
    .line 5
    iget-object v2, p0, LE3/l;->a0:Lorg/json/JSONObject;

    .line 6
    .line 7
    const-string v3, "mediaSessionId"

    .line 8
    .line 9
    const-string v4, "type"

    .line 10
    .line 11
    const-string v5, "requestId"

    .line 12
    .line 13
    iget-object v6, p0, LE3/l;->b0:LE3/j;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v6, LE3/j;->c:LH3/n;

    .line 19
    .line 20
    invoke-virtual {p0}, LE3/r;->R0()LH3/o;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v7, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, LH3/q;->b()J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    :try_start_0
    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v5, "PLAY"

    .line 40
    .line 41
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, LH3/n;->p()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual {v7, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    :cond_0
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v8, v9, v1}, LH3/q;->c(JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, LH3/n;->l:LH3/p;

    .line 64
    .line 65
    invoke-virtual {v0, v8, v9, v6}, LH3/p;->a(JLH3/o;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    iget-object v0, v6, LE3/j;->c:LH3/n;

    .line 70
    .line 71
    invoke-virtual {p0}, LE3/r;->R0()LH3/o;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v7, Lorg/json/JSONObject;

    .line 79
    .line 80
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, LH3/q;->b()J

    .line 84
    .line 85
    .line 86
    move-result-wide v8

    .line 87
    :try_start_1
    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v5, "PAUSE"

    .line 91
    .line 92
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, LH3/n;->p()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    invoke-virtual {v7, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    .line 107
    :catch_1
    :cond_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v8, v9, v1}, LH3/q;->c(JLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, LH3/n;->k:LH3/p;

    .line 115
    .line 116
    invoke-virtual {v0, v8, v9, v6}, LH3/p;->a(JLH3/o;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_1
    iget-object v0, v6, LE3/j;->c:LH3/n;

    .line 121
    .line 122
    invoke-virtual {p0}, LE3/r;->R0()LH3/o;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const/4 v3, 0x1

    .line 127
    invoke-virtual {v0, v1, v3, v2}, LH3/n;->d(LH3/o;ILorg/json/JSONObject;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_2
    iget-object v0, v6, LE3/j;->c:LH3/n;

    .line 132
    .line 133
    invoke-virtual {p0}, LE3/r;->R0()LH3/o;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v3, -0x1

    .line 138
    invoke-virtual {v0, v1, v3, v2}, LH3/n;->d(LH3/o;ILorg/json/JSONObject;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic LA0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LA0/d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, LA0/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, LA0/d;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, LA0/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, LA0/h0;

    .line 12
    .line 13
    iget-object v1, p0, LA0/d;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    iget-object v4, v0, LA0/h0;->e:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iput-boolean v3, v0, LA0/h0;->g:Z

    .line 21
    .line 22
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0

    .line 30
    :pswitch_0
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, LA0/Z;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    throw v2

    .line 38
    :pswitch_1
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, LA0/E;

    .line 41
    .line 42
    iget-object v1, p0, LA0/d;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, LA0/c0;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v2, v1, LA0/c0;->a:Lm0/v;

    .line 50
    .line 51
    iget-object v3, v0, LA0/E;->G:LF/i;

    .line 52
    .line 53
    iget-wide v4, v1, LA0/c0;->b:J

    .line 54
    .line 55
    iget-object v0, v0, LA0/E;->H:LA0/K;

    .line 56
    .line 57
    invoke-interface {v0, v3, v2, v4, v5}, LA0/K;->b(LF/i;Lm0/v;J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, LA0/D;

    .line 64
    .line 65
    iget-object v4, p0, LA0/d;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lm0/b0;

    .line 68
    .line 69
    iget-object v5, v0, LA0/D;->x:Lm0/b0;

    .line 70
    .line 71
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_0

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_0
    iget-object v5, v0, LA0/D;->x:Lm0/b0;

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    iget-object v5, v5, Lm0/b0;->a:Landroid/view/Surface;

    .line 85
    .line 86
    iget-object v6, v4, Lm0/b0;->a:Landroid/view/Surface;

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    :cond_1
    iget-object v5, v0, LA0/D;->d:Landroid/opengl/EGLDisplay;

    .line 95
    .line 96
    iget-object v6, v0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 97
    .line 98
    if-nez v6, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :try_start_2
    iget-object v6, v0, LA0/D;->e:Landroid/opengl/EGLContext;

    .line 102
    .line 103
    iget-object v7, v0, LA0/D;->f:Landroid/opengl/EGLSurface;

    .line 104
    .line 105
    invoke-static {v5, v7, v7, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 106
    .line 107
    .line 108
    const-string v6, "Error making context current"

    .line 109
    .line 110
    invoke-static {v6}, Lp0/b;->d(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v3, v1, v1}, Lp0/b;->r(III)V

    .line 114
    .line 115
    .line 116
    iget-object v6, v0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 117
    .line 118
    invoke-static {v5, v6}, Lp0/b;->q(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    :try_end_2
    .catch Lp0/p; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .line 120
    .line 121
    :goto_0
    iput-object v2, v0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_1
    move-exception v1

    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v5

    .line 127
    :try_start_3
    iget-object v6, v0, LA0/D;->i:Ljava/util/concurrent/Executor;

    .line 128
    .line 129
    new-instance v7, Lf/t;

    .line 130
    .line 131
    const/16 v8, 0xa

    .line 132
    .line 133
    invoke-direct {v7, v8, v0, v5}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :goto_1
    iput-object v2, v0, LA0/D;->z:Landroid/opengl/EGLSurface;

    .line 141
    .line 142
    throw v1

    .line 143
    :cond_3
    :goto_2
    iget-object v2, v0, LA0/D;->x:Lm0/b0;

    .line 144
    .line 145
    if-eqz v2, :cond_4

    .line 146
    .line 147
    if-eqz v4, :cond_4

    .line 148
    .line 149
    iget v5, v2, Lm0/b0;->b:I

    .line 150
    .line 151
    iget v6, v4, Lm0/b0;->b:I

    .line 152
    .line 153
    if-ne v5, v6, :cond_4

    .line 154
    .line 155
    iget v2, v2, Lm0/b0;->c:I

    .line 156
    .line 157
    iget v5, v4, Lm0/b0;->c:I

    .line 158
    .line 159
    if-ne v2, v5, :cond_4

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    :cond_4
    iput-boolean v1, v0, LA0/D;->w:Z

    .line 163
    .line 164
    iput-object v4, v0, LA0/D;->x:Lm0/b0;

    .line 165
    .line 166
    :goto_3
    return-void

    .line 167
    :pswitch_3
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, LA0/B;

    .line 170
    .line 171
    iget-object v1, p0, LA0/d;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, LA0/K;

    .line 174
    .line 175
    iput v3, v0, LA0/B;->S:I

    .line 176
    .line 177
    check-cast v1, LA0/y;

    .line 178
    .line 179
    iput-object v1, v0, LA0/B;->K:LA0/y;

    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_4
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, LA0/x;

    .line 185
    .line 186
    iget-object v2, p0, LA0/d;->c:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v2, LA0/w;

    .line 189
    .line 190
    sget v3, LA0/x;->x:I

    .line 191
    .line 192
    invoke-virtual {v0, v2, v1}, LA0/x;->a(LA0/w;Z)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_5
    iget-object v0, p0, LA0/d;->b:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, LA0/f;

    .line 199
    .line 200
    iget-object v1, p0, LA0/d;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v1, Lm0/v;

    .line 203
    .line 204
    iget-object v0, v0, LA0/f;->G:LA0/K;

    .line 205
    .line 206
    invoke-interface {v0, v1}, LA0/K;->c(Lm0/v;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

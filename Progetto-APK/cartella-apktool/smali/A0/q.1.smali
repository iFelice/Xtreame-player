.class public final synthetic LA0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA0/x;


# direct methods
.method public synthetic constructor <init>(LA0/x;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LA0/q;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/q;->b:LA0/x;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, LA0/q;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LA0/q;->b:LA0/x;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, LA0/x;->x:I

    .line 10
    .line 11
    invoke-virtual {v2}, LA0/x;->b()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v2, LA0/x;->u:LA0/U;

    .line 21
    .line 22
    iget v3, v0, LA0/U;->j:I

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_0
    iget-object v5, v0, LA0/U;->i:[LA0/c0;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    aget-object v3, v5, v1

    .line 41
    .line 42
    iget-wide v6, v3, LA0/c0;->b:J

    .line 43
    .line 44
    :goto_1
    iget-object v2, v2, LA0/x;->k:LA0/D;

    .line 45
    .line 46
    iput-wide v6, v2, LA0/D;->y:J

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_2
    iget-object v6, v2, LA0/D;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-ge v3, v7, :cond_2

    .line 56
    .line 57
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, LA0/c0;

    .line 62
    .line 63
    iget-object v7, v2, LA0/D;->s:LA0/I;

    .line 64
    .line 65
    iget-object v6, v6, LA0/c0;->a:Lm0/v;

    .line 66
    .line 67
    invoke-interface {v7, v6}, LA0/I;->A(Lm0/v;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    iget v2, v0, LA0/U;->j:I

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    aget-object v1, v5, v1

    .line 79
    .line 80
    iget-object v2, v0, LA0/a;->c:LA0/J;

    .line 81
    .line 82
    iget-object v3, v1, LA0/c0;->a:Lm0/v;

    .line 83
    .line 84
    iget-wide v6, v1, LA0/c0;->b:J

    .line 85
    .line 86
    invoke-interface {v2, v3, v6, v7}, LA0/J;->i(Lm0/v;J)V

    .line 87
    .line 88
    .line 89
    iget v1, v0, LA0/U;->j:I

    .line 90
    .line 91
    if-le v1, v4, :cond_4

    .line 92
    .line 93
    aget-object v1, v5, v4

    .line 94
    .line 95
    iget-object v0, v0, LA0/a;->c:LA0/J;

    .line 96
    .line 97
    iget-object v2, v1, LA0/c0;->a:Lm0/v;

    .line 98
    .line 99
    iget-wide v3, v1, LA0/c0;->b:J

    .line 100
    .line 101
    invoke-interface {v0, v2, v3, v4}, LA0/J;->i(Lm0/v;J)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_3
    return-void

    .line 105
    :pswitch_1
    const-string v0, "Error releasing GL objects"

    .line 106
    .line 107
    iget-object v3, v2, LA0/x;->e:Landroid/opengl/EGLDisplay;

    .line 108
    .line 109
    iget-object v4, v2, LA0/x;->c:LF/i;

    .line 110
    .line 111
    iget-boolean v5, v2, LA0/x;->d:Z

    .line 112
    .line 113
    const-string v6, "DefaultFrameProcessor"

    .line 114
    .line 115
    :try_start_0
    iget-object v7, v2, LA0/x;->f:LA0/N;

    .line 116
    .line 117
    invoke-virtual {v7}, LA0/N;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    :goto_4
    iget-object v8, v2, LA0/x;->l:Ljava/util/ArrayList;

    .line 122
    .line 123
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-ge v7, v9, :cond_5

    .line 128
    .line 129
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, LA0/K;

    .line 134
    .line 135
    invoke-interface {v8}, LA0/K;->release()V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :catchall_0
    move-exception v2

    .line 142
    goto :goto_8

    .line 143
    :catch_0
    move-exception v2

    .line 144
    goto :goto_5

    .line 145
    :cond_5
    iget-object v2, v2, LA0/x;->k:LA0/D;

    .line 146
    .line 147
    invoke-virtual {v2}, LA0/D;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :goto_5
    :try_start_2
    const-string v7, "Error releasing shader program"

    .line 152
    .line 153
    invoke-static {v6, v7, v2}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .line 155
    .line 156
    :goto_6
    if-eqz v5, :cond_6

    .line 157
    .line 158
    :goto_7
    :try_start_3
    iget-object v2, v4, LF/i;->I:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-ge v1, v2, :cond_6

    .line 167
    .line 168
    iget-object v2, v4, LF/i;->I:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroid/opengl/EGLContext;

    .line 177
    .line 178
    invoke-static {v2, v3}, Lp0/b;->p(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)V
    :try_end_3
    .catch Lp0/p; {:try_start_3 .. :try_end_3} :catch_1

    .line 179
    .line 180
    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :catch_1
    move-exception v1

    .line 185
    invoke-static {v6, v0, v1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    return-void

    .line 189
    :goto_8
    if-eqz v5, :cond_7

    .line 190
    .line 191
    :goto_9
    :try_start_4
    iget-object v5, v4, LF/i;->I:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v5, Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-ge v1, v5, :cond_7

    .line 200
    .line 201
    iget-object v5, v4, LF/i;->I:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v5, Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Landroid/opengl/EGLContext;

    .line 210
    .line 211
    invoke-static {v5, v3}, Lp0/b;->p(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)V
    :try_end_4
    .catch Lp0/p; {:try_start_4 .. :try_end_4} :catch_2

    .line 212
    .line 213
    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :catch_2
    move-exception v1

    .line 218
    invoke-static {v6, v0, v1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    throw v2

    .line 222
    :pswitch_2
    invoke-virtual {v2}, LA0/x;->b()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/google/android/gms/internal/ads/se;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/re;

.field public static final b:Lcom/google/android/gms/internal/ads/re;

.field public static final c:Lcom/google/android/gms/internal/ads/re;

.field public static final d:Lcom/google/android/gms/internal/ads/pe;

.field public static final e:Lcom/google/android/gms/internal/ads/re;

.field public static final f:Lcom/google/android/gms/internal/ads/re;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Ca:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "Default"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Da:Lcom/google/android/gms/internal/ads/J7;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Ea:Lcom/google/android/gms/internal/ads/J7;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .line 69
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 70
    .line 71
    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v12, Lcom/google/android/gms/internal/ads/T4;

    .line 75
    .line 76
    invoke-direct {v12, v3}, Lcom/google/android/gms/internal/ads/T4;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v8, 0xa

    .line 80
    .line 81
    move-object v5, v4

    .line 82
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->b(Lcom/google/android/gms/internal/ads/J7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 100
    .line 101
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 102
    .line 103
    new-instance v11, Ljava/util/concurrent/SynchronousQueue;

    .line 104
    .line 105
    invoke-direct {v11}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v12, Lcom/google/android/gms/internal/ads/T4;

    .line 109
    .line 110
    invoke-direct {v12, v3}, Lcom/google/android/gms/internal/ads/T4;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const v7, 0x7fffffff

    .line 114
    .line 115
    .line 116
    const-wide/16 v8, 0xa

    .line 117
    .line 118
    const/4 v6, 0x2

    .line 119
    move-object v5, v4

    .line 120
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/re;

    .line 124
    .line 125
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/re;-><init>(Ljava/util/concurrent/Executor;)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 129
    .line 130
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 131
    .line 132
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    .line 134
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 135
    .line 136
    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v12, Lcom/google/android/gms/internal/ads/T4;

    .line 140
    .line 141
    const-string v1, "Loader"

    .line 142
    .line 143
    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/T4;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v7, 0x5

    .line 147
    const-wide/16 v8, 0xa

    .line 148
    .line 149
    const/4 v6, 0x5

    .line 150
    move-object v5, v0

    .line 151
    move-object v10, v13

    .line 152
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 153
    .line 154
    .line 155
    const/4 v9, 0x1

    .line 156
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lcom/google/android/gms/internal/ads/re;

    .line 160
    .line 161
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/re;-><init>(Ljava/util/concurrent/Executor;)V

    .line 162
    .line 163
    .line 164
    sput-object v1, Lcom/google/android/gms/internal/ads/se;->b:Lcom/google/android/gms/internal/ads/re;

    .line 165
    .line 166
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 167
    .line 168
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v8, Lcom/google/android/gms/internal/ads/T4;

    .line 174
    .line 175
    const-string v1, "Activeview"

    .line 176
    .line 177
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/T4;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const/4 v3, 0x1

    .line 181
    const-wide/16 v4, 0xa

    .line 182
    .line 183
    const/4 v2, 0x1

    .line 184
    move-object v1, v0

    .line 185
    move-object v6, v13

    .line 186
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lcom/google/android/gms/internal/ads/re;

    .line 193
    .line 194
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/re;-><init>(Ljava/util/concurrent/Executor;)V

    .line 195
    .line 196
    .line 197
    sput-object v1, Lcom/google/android/gms/internal/ads/se;->c:Lcom/google/android/gms/internal/ads/re;

    .line 198
    .line 199
    new-instance v0, Lcom/google/android/gms/internal/ads/pe;

    .line 200
    .line 201
    new-instance v1, Lcom/google/android/gms/internal/ads/T4;

    .line 202
    .line 203
    const-string v2, "Schedule"

    .line 204
    .line 205
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/T4;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v2, 0x3

    .line 209
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lcom/google/android/gms/internal/ads/se;->d:Lcom/google/android/gms/internal/ads/pe;

    .line 213
    .line 214
    new-instance v0, Lcom/google/android/gms/internal/ads/qe;

    .line 215
    .line 216
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qe;-><init>()V

    .line 217
    .line 218
    .line 219
    new-instance v1, Lcom/google/android/gms/internal/ads/re;

    .line 220
    .line 221
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/re;-><init>(Ljava/util/concurrent/Executor;)V

    .line 222
    .line 223
    .line 224
    sput-object v1, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 225
    .line 226
    sget-object v0, Lcom/google/android/gms/internal/ads/XB;->G:Lcom/google/android/gms/internal/ads/XB;

    .line 227
    .line 228
    new-instance v1, Lcom/google/android/gms/internal/ads/re;

    .line 229
    .line 230
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/re;-><init>(Ljava/util/concurrent/Executor;)V

    .line 231
    .line 232
    .line 233
    sput-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 234
    .line 235
    return-void
.end method

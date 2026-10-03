.class public abstract Lcom/google/android/gms/internal/measurement/X1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lcom/google/android/gms/internal/measurement/L1;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lo3/G;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/X1;->f:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/android/gms/internal/measurement/X1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Lo3/G;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/X1;->d:I

    .line 6
    .line 7
    iget-object v0, p1, Lo3/G;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/net/Uri;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/X1;->a:Lo3/G;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/X1;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/X1;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/X1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/X1;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_d

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/X1;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_c

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/measurement/X1;->g:Lcom/google/android/gms/internal/measurement/L1;

    .line 17
    .line 18
    sget-object v2, Ly4/a;->G:Ly4/a;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/L1;->b:Ly4/t;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-interface {v4}, Ly4/t;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ly4/j;

    .line 32
    .line 33
    invoke-virtual {v2}, Ly4/j;->b()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Ly4/j;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/google/android/gms/internal/measurement/N1;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/X1;->a:Lo3/G;

    .line 46
    .line 47
    iget-object v5, v5, Lo3/G;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Landroid/net/Uri;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/X1;->b:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/N1;->a:Lr/m;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lr/m;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-object v4, v3

    .line 72
    :goto_0
    if-nez v4, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v5, ""

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_2
    :goto_1
    move-object v4, v3

    .line 92
    :goto_2
    const/4 v5, 0x0

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const/4 v6, 0x0

    .line 98
    :goto_3
    const-string v7, "Must call PhenotypeFlagInitializer.maybeInit() first"

    .line 99
    .line 100
    invoke-static {v7, v6}, Ly4/k;->v(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/X1;->a:Lo3/G;

    .line 104
    .line 105
    iget-object v7, v6, Lo3/G;->d:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v7, Landroid/net/Uri;

    .line 108
    .line 109
    if-eqz v7, :cond_b

    .line 110
    .line 111
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/L1;->a:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/R1;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_4

    .line 118
    .line 119
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/L1;->a:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    new-instance v9, Lcom/google/android/gms/internal/measurement/T1;

    .line 126
    .line 127
    invoke-direct {v9, v5}, Lcom/google/android/gms/internal/measurement/T1;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/M1;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/T1;)Lcom/google/android/gms/internal/measurement/M1;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    move-object v5, v3

    .line 136
    :goto_4
    if-eqz v5, :cond_5

    .line 137
    .line 138
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/X1;->b:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/M1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-eqz v5, :cond_5

    .line 145
    .line 146
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/X1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    goto :goto_5

    .line 151
    :cond_5
    move-object v5, v3

    .line 152
    :goto_5
    if-eqz v5, :cond_6

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_6
    iget-boolean v5, v6, Lo3/G;->b:Z

    .line 156
    .line 157
    if-nez v5, :cond_7

    .line 158
    .line 159
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/L1;->a:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/P1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/P1;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/X1;->b:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/P1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/X1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :cond_7
    if-nez v3, :cond_8

    .line 178
    .line 179
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/X1;->c:Ljava/lang/Object;

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_8
    move-object v5, v3

    .line 183
    :goto_6
    invoke-virtual {v2}, Ly4/j;->b()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    if-nez v4, :cond_9

    .line 190
    .line 191
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/X1;->c:Ljava/lang/Object;

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_9
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/X1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    :cond_a
    :goto_7
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/X1;->e:Ljava/lang/Object;

    .line 199
    .line 200
    iput v0, p0, Lcom/google/android/gms/internal/measurement/X1;->d:I

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/L1;->a:Landroid/content/Context;

    .line 204
    .line 205
    throw v3

    .line 206
    :cond_c
    :goto_8
    monitor-exit p0

    .line 207
    goto :goto_a

    .line 208
    :goto_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    throw v0

    .line 210
    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/X1;->e:Ljava/lang/Object;

    .line 211
    .line 212
    return-object v0
.end method

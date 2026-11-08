.class public final Lc4/K0;
.super Lc4/B;
.source "SourceFile"


# instance fields
.field public I:Lcom/google/android/gms/internal/measurement/l0;

.field public J:Lm2/l;

.field public final K:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public L:Z

.field public final M:Ljava/util/concurrent/atomic/AtomicReference;

.field public final N:Ljava/lang/Object;

.field public O:Z

.field public P:I

.field public Q:Lc4/F0;

.field public R:Lc4/F0;

.field public S:Ljava/util/PriorityQueue;

.field public T:Z

.field public U:Lc4/x0;

.field public final V:Ljava/util/concurrent/atomic/AtomicLong;

.field public W:J

.field public final X:Lc4/k0;

.field public Y:Z

.field public Z:Lc4/F0;

.field public a0:Lcom/google/android/gms/internal/measurement/Y1;

.field public b0:Lc4/F0;

.field public final c0:LZ3/o;


# direct methods
.method public constructor <init>(Lc4/l0;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lc4/B;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc4/K0;->K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lc4/K0;->N:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lc4/K0;->O:Z

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lc4/K0;->P:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lc4/K0;->Y:Z

    .line 25
    .line 26
    new-instance v0, LZ3/o;

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-direct {v0, p0, v1}, LZ3/o;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lc4/K0;->c0:LZ3/o;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    sget-object v0, Lc4/x0;->c:Lc4/x0;

    .line 42
    .line 43
    iput-object v0, p0, Lc4/K0;->U:Lc4/x0;

    .line 44
    .line 45
    const-wide/16 v0, -0x1

    .line 46
    .line 47
    iput-wide v0, p0, Lc4/K0;->W:J

    .line 48
    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lc4/K0;->V:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    .line 58
    new-instance v0, Lc4/k0;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lc4/k0;-><init>(Lc4/l0;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lc4/K0;->X:Lc4/k0;

    .line 64
    .line 65
    return-void
.end method

.method public static q(Lc4/K0;Lc4/x0;JZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object p4, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p4, Lc4/l0;

    .line 10
    .line 11
    iget-object v0, p4, Lc4/l0;->N:Lc4/Z;

    .line 12
    .line 13
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lc4/Z;->u()Lc4/x0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-wide v1, p0, Lc4/K0;->W:J

    .line 21
    .line 22
    iget v3, p1, Lc4/x0;->b:I

    .line 23
    .line 24
    iget-object v4, p4, Lc4/l0;->O:Lc4/T;

    .line 25
    .line 26
    cmp-long v5, p2, v1

    .line 27
    .line 28
    if-gtz v5, :cond_1

    .line 29
    .line 30
    iget v0, v0, Lc4/x0;->b:I

    .line 31
    .line 32
    invoke-static {v0, v3}, Lc4/x0;->l(II)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 40
    .line 41
    .line 42
    const-string p0, "Dropped out-of-date consent setting, proposed settings"

    .line 43
    .line 44
    iget-object p2, v4, Lc4/T;->R:Lc4/Q;

    .line 45
    .line 46
    invoke-virtual {p2, p1, p0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    :goto_0
    iget-object p4, p4, Lc4/l0;->N:Lc4/Z;

    .line 51
    .line 52
    invoke-static {p4}, Lc4/l0;->i(Lc4/s0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Lc1/d;->m()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/16 v1, 0x64

    .line 63
    .line 64
    const-string v2, "consent_source"

    .line 65
    .line 66
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v3, v0}, Lc4/x0;->l(II)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lc4/l0;

    .line 79
    .line 80
    invoke-virtual {p4}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-virtual {p1}, Lc4/x0;->j()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v5, "consent_settings"

    .line 93
    .line 94
    invoke-interface {p4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    .line 97
    invoke-interface {p4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    .line 102
    .line 103
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 104
    .line 105
    .line 106
    const-string p4, "Setting storage consent(FE)"

    .line 107
    .line 108
    iget-object v1, v4, Lc4/T;->T:Lc4/Q;

    .line 109
    .line 110
    invoke-virtual {v1, p1, p4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-wide p2, p0, Lc4/K0;->W:J

    .line 114
    .line 115
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lc4/d1;->z()Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    const/4 p1, 0x0

    .line 124
    if-eqz p0, :cond_2

    .line 125
    .line 126
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 134
    .line 135
    .line 136
    new-instance p2, Lc4/W0;

    .line 137
    .line 138
    invoke-direct {p2, p0, p1}, Lc4/W0;-><init>(Lc4/d1;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lc4/d1;->y()Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_3

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance p2, Lc4/Z0;

    .line 166
    .line 167
    const/4 p3, 0x4

    .line 168
    invoke-direct {p2, p0, p1, p3}, Lc4/Z0;-><init>(Lc4/d1;Lc4/J1;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    :goto_1
    if-eqz p5, :cond_4

    .line 175
    .line 176
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 181
    .line 182
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lc4/d1;->s(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 186
    .line 187
    .line 188
    :cond_4
    return-void

    .line 189
    :cond_5
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    const-string p1, "Lower precedence consent source ignored, proposed source"

    .line 197
    .line 198
    iget-object p2, v4, Lc4/T;->R:Lc4/Q;

    .line 199
    .line 200
    invoke-virtual {p2, p0, p1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-wide/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v12, p5

    .line 10
    .line 11
    move/from16 v13, p8

    .line 12
    .line 13
    const/4 v14, 0x0

    .line 14
    const/4 v15, 0x1

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static/range {p5 .. p5}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lc4/l0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lc4/l0;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_29

    .line 36
    .line 37
    iget-object v1, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lc4/l0;

    .line 40
    .line 41
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Lc4/L;->Q:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lc4/l0;

    .line 59
    .line 60
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 61
    .line 62
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 66
    .line 67
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 68
    .line 69
    invoke-virtual {v0, v9, v8, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lc4/K0;->L:Z

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    iput-boolean v15, v7, Lc4/K0;->L:Z

    .line 79
    .line 80
    :try_start_0
    iget-boolean v0, v0, Lc4/l0;->K:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .line 82
    const-string v1, "com.google.android.gms.tagmanager.TagManagerService"

    .line 83
    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    :try_start_1
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lc4/l0;

    .line 89
    .line 90
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_1
    :try_start_2
    const-string v1, "initialize"

    .line 106
    .line 107
    new-array v2, v15, [Ljava/lang/Class;

    .line 108
    .line 109
    const-class v3, Landroid/content/Context;

    .line 110
    .line 111
    aput-object v3, v2, v14

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-array v1, v15, [Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v2, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v2, Lc4/l0;

    .line 122
    .line 123
    iget-object v2, v2, Lc4/l0;->G:Landroid/content/Context;

    .line 124
    .line 125
    aput-object v2, v1, v14

    .line 126
    .line 127
    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_3
    iget-object v1, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Lc4/l0;

    .line 135
    .line 136
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 137
    .line 138
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 142
    .line 143
    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    .line 144
    .line 145
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_1
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lc4/l0;

    .line 152
    .line 153
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 154
    .line 155
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 156
    .line 157
    .line 158
    const-string v1, "Tag Manager is not found and thus will not be used"

    .line 159
    .line 160
    iget-object v0, v0, Lc4/T;->R:Lc4/Q;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_2
    const-string v0, "_cmp"

    .line 166
    .line 167
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    const-string v0, "gclid"

    .line 174
    .line 175
    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    iget-object v1, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v1, Lc4/l0;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iget-object v0, v1, Lc4/l0;->T:LP3/b;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    const-string v5, "auto"

    .line 202
    .line 203
    const-string v0, "_lgclid"

    .line 204
    .line 205
    move-object/from16 v1, p0

    .line 206
    .line 207
    move-object v6, v0

    .line 208
    invoke-virtual/range {v1 .. v6}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Lc4/l0;

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    iget-object v6, v0, Lc4/l0;->R:Lc4/I1;

    .line 219
    .line 220
    iget-object v5, v0, Lc4/l0;->N:Lc4/Z;

    .line 221
    .line 222
    if-eqz p6, :cond_5

    .line 223
    .line 224
    sget-object v1, Lc4/I1;->P:[Ljava/lang/String;

    .line 225
    .line 226
    aget-object v1, v1, v14

    .line 227
    .line 228
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    xor-int/2addr v1, v15

    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    invoke-static {v6}, Lc4/l0;->i(Lc4/s0;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v5}, Lc4/l0;->i(Lc4/s0;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v5, Lc4/Z;->f0:Lm2/o;

    .line 242
    .line 243
    invoke-virtual {v1}, Lm2/o;->u()Landroid/os/Bundle;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v6, v12, v1}, Lc4/I1;->D(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    iget-object v1, v7, Lc4/K0;->c0:LZ3/o;

    .line 251
    .line 252
    iget-object v3, v0, Lc4/l0;->S:Lc4/O;

    .line 253
    .line 254
    iget-object v4, v0, Lc4/l0;->O:Lc4/T;

    .line 255
    .line 256
    if-nez v13, :cond_a

    .line 257
    .line 258
    const-string v14, "_iap"

    .line 259
    .line 260
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    if-nez v14, :cond_a

    .line 265
    .line 266
    iget-object v14, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v14, Lc4/l0;

    .line 269
    .line 270
    iget-object v15, v14, Lc4/l0;->R:Lc4/I1;

    .line 271
    .line 272
    invoke-static {v15}, Lc4/l0;->i(Lc4/s0;)V

    .line 273
    .line 274
    .line 275
    const-string v2, "event"

    .line 276
    .line 277
    invoke-virtual {v15, v2, v9}, Lc4/I1;->b0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v18

    .line 281
    const/16 v19, 0x2

    .line 282
    .line 283
    if-nez v18, :cond_6

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_6
    sget-object v10, Lc4/y0;->a:[Ljava/lang/String;

    .line 287
    .line 288
    sget-object v11, Lc4/y0;->b:[Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v15, v2, v10, v11, v9}, Lc4/I1;->Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-nez v10, :cond_7

    .line 295
    .line 296
    const/16 v2, 0xd

    .line 297
    .line 298
    const/16 v19, 0xd

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_7
    iget-object v10, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v10, Lc4/l0;

    .line 304
    .line 305
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    const/16 v10, 0x28

    .line 309
    .line 310
    invoke-virtual {v15, v10, v2, v9}, Lc4/I1;->X(ILjava/lang/String;Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-nez v2, :cond_8

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_8
    const/16 v19, 0x0

    .line 318
    .line 319
    :goto_3
    if-eqz v19, :cond_a

    .line 320
    .line 321
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v9}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v2, "Invalid public event name. Event will not be logged (FE)"

    .line 329
    .line 330
    iget-object v3, v4, Lc4/T;->N:Lc4/Q;

    .line 331
    .line 332
    invoke-virtual {v3, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, v14, Lc4/l0;->R:Lc4/I1;

    .line 336
    .line 337
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    const/16 v0, 0x28

    .line 344
    .line 345
    const/4 v2, 0x1

    .line 346
    invoke-static {v0, v9, v2}, Lc4/I1;->w(ILjava/lang/String;Z)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    if-eqz v9, :cond_9

    .line 351
    .line 352
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    goto :goto_4

    .line 357
    :cond_9
    const/4 v14, 0x0

    .line 358
    :goto_4
    const/4 v2, 0x0

    .line 359
    const-string v3, "_ev"

    .line 360
    .line 361
    move-object/from16 p1, v1

    .line 362
    .line 363
    move-object/from16 p2, v2

    .line 364
    .line 365
    move/from16 p3, v19

    .line 366
    .line 367
    move-object/from16 p4, v3

    .line 368
    .line 369
    move-object/from16 p5, v0

    .line 370
    .line 371
    move/from16 p6, v14

    .line 372
    .line 373
    invoke-static/range {p1 .. p6}, Lc4/I1;->G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_a
    iget-object v2, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 378
    .line 379
    move-object v10, v2

    .line 380
    check-cast v10, Lc4/l0;

    .line 381
    .line 382
    iget-object v2, v10, Lc4/l0;->U:Lc4/V0;

    .line 383
    .line 384
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 385
    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    invoke-virtual {v2, v11}, Lc4/V0;->t(Z)Lc4/S0;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v11, "_sc"

    .line 393
    .line 394
    if-eqz v2, :cond_b

    .line 395
    .line 396
    invoke-virtual {v12, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 397
    .line 398
    .line 399
    move-result v14

    .line 400
    if-nez v14, :cond_b

    .line 401
    .line 402
    const/4 v14, 0x1

    .line 403
    iput-boolean v14, v2, Lc4/S0;->d:Z

    .line 404
    .line 405
    :cond_b
    if-eqz p6, :cond_c

    .line 406
    .line 407
    if-nez v13, :cond_c

    .line 408
    .line 409
    const/4 v14, 0x1

    .line 410
    goto :goto_5

    .line 411
    :cond_c
    const/4 v14, 0x0

    .line 412
    :goto_5
    invoke-static {v2, v12, v14}, Lc4/I1;->C(Lc4/S0;Landroid/os/Bundle;Z)V

    .line 413
    .line 414
    .line 415
    const-string v2, "am"

    .line 416
    .line 417
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-static/range {p2 .. p2}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result v14

    .line 425
    if-eqz p6, :cond_f

    .line 426
    .line 427
    iget-object v15, v7, Lc4/K0;->J:Lm2/l;

    .line 428
    .line 429
    if-eqz v15, :cond_f

    .line 430
    .line 431
    if-nez v14, :cond_f

    .line 432
    .line 433
    if-eqz v2, :cond_d

    .line 434
    .line 435
    const/4 v14, 0x1

    .line 436
    goto :goto_7

    .line 437
    :cond_d
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v9}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v3, v12}, Lc4/O;->b(Landroid/os/Bundle;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    const-string v2, "Passing event to registered event handler (FE)"

    .line 449
    .line 450
    iget-object v3, v4, Lc4/T;->S:Lc4/Q;

    .line 451
    .line 452
    invoke-virtual {v3, v0, v1, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v0, v7, Lc4/K0;->J:Lm2/l;

    .line 456
    .line 457
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    iget-object v10, v7, Lc4/K0;->J:Lm2/l;

    .line 461
    .line 462
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    :try_start_4
    iget-object v0, v10, Lm2/l;->H:Ljava/lang/Object;

    .line 466
    .line 467
    move-object v1, v0

    .line 468
    check-cast v1, Lcom/google/android/gms/internal/measurement/S;

    .line 469
    .line 470
    move-wide/from16 v2, p3

    .line 471
    .line 472
    move-object/from16 v4, p5

    .line 473
    .line 474
    move-object/from16 v5, p1

    .line 475
    .line 476
    move-object/from16 v6, p2

    .line 477
    .line 478
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/S;->U0(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 479
    .line 480
    .line 481
    goto :goto_6

    .line 482
    :catch_2
    move-exception v0

    .line 483
    iget-object v1, v10, Lm2/l;->I:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 486
    .line 487
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 488
    .line 489
    if-eqz v1, :cond_e

    .line 490
    .line 491
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 492
    .line 493
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 494
    .line 495
    .line 496
    const-string v2, "Event interceptor threw exception"

    .line 497
    .line 498
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 499
    .line 500
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :cond_e
    :goto_6
    return-void

    .line 504
    :cond_f
    move v14, v2

    .line 505
    :goto_7
    iget-object v2, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 506
    .line 507
    move-object v15, v2

    .line 508
    check-cast v15, Lc4/l0;

    .line 509
    .line 510
    invoke-virtual {v15}, Lc4/l0;->g()Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-nez v2, :cond_10

    .line 515
    .line 516
    goto/16 :goto_15

    .line 517
    .line 518
    :cond_10
    invoke-static {v6}, Lc4/l0;->i(Lc4/s0;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6, v9}, Lc4/I1;->r0(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_12

    .line 526
    .line 527
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v9}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const-string v3, "Invalid event name. Event will not be logged (FE)"

    .line 535
    .line 536
    iget-object v4, v4, Lc4/T;->N:Lc4/Q;

    .line 537
    .line 538
    invoke-virtual {v4, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    const/16 v0, 0x28

    .line 542
    .line 543
    const/4 v3, 0x1

    .line 544
    invoke-static {v0, v9, v3}, Lc4/I1;->w(ILjava/lang/String;Z)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    if-eqz v9, :cond_11

    .line 549
    .line 550
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 551
    .line 552
    .line 553
    move-result v14

    .line 554
    goto :goto_8

    .line 555
    :cond_11
    const/4 v14, 0x0

    .line 556
    :goto_8
    iget-object v3, v15, Lc4/l0;->R:Lc4/I1;

    .line 557
    .line 558
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    const-string v3, "_ev"

    .line 565
    .line 566
    move-object/from16 p1, v1

    .line 567
    .line 568
    move-object/from16 p2, p9

    .line 569
    .line 570
    move/from16 p3, v2

    .line 571
    .line 572
    move-object/from16 p4, v3

    .line 573
    .line 574
    move-object/from16 p5, v0

    .line 575
    .line 576
    move/from16 p6, v14

    .line 577
    .line 578
    invoke-static/range {p1 .. p6}, Lc4/I1;->G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :cond_12
    const-string v2, "_o"

    .line 583
    .line 584
    const-string v1, "_sn"

    .line 585
    .line 586
    const-string v3, "_si"

    .line 587
    .line 588
    filled-new-array {v2, v1, v11, v3}, [Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v6, v9, v12, v1, v13}, Lc4/I1;->q(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 601
    .line 602
    .line 603
    move-result-object v11

    .line 604
    invoke-static {v11}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    iget-object v12, v10, Lc4/l0;->U:Lc4/V0;

    .line 608
    .line 609
    invoke-static {v12}, Lc4/l0;->j(Lc4/B;)V

    .line 610
    .line 611
    .line 612
    const/4 v1, 0x0

    .line 613
    invoke-virtual {v12, v1}, Lc4/V0;->t(Z)Lc4/S0;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    const-string v13, "_ae"

    .line 618
    .line 619
    move/from16 p6, v14

    .line 620
    .line 621
    move-object/from16 v17, v15

    .line 622
    .line 623
    iget-object v1, v10, Lc4/l0;->Q:Lc4/k1;

    .line 624
    .line 625
    if-eqz v3, :cond_13

    .line 626
    .line 627
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    if-eqz v3, :cond_13

    .line 632
    .line 633
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 634
    .line 635
    .line 636
    iget-object v3, v1, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 637
    .line 638
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v14, Lc4/k1;

    .line 641
    .line 642
    iget-object v14, v14, Lc1/d;->G:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v14, Lc4/l0;

    .line 645
    .line 646
    iget-object v14, v14, Lc4/l0;->T:LP3/b;

    .line 647
    .line 648
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 652
    .line 653
    .line 654
    move-result-wide v14

    .line 655
    move-object/from16 v19, v4

    .line 656
    .line 657
    move-object/from16 v18, v5

    .line 658
    .line 659
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 660
    .line 661
    sub-long v4, v14, v4

    .line 662
    .line 663
    iput-wide v14, v3, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 664
    .line 665
    const-wide/16 v14, 0x0

    .line 666
    .line 667
    cmp-long v3, v4, v14

    .line 668
    .line 669
    if-lez v3, :cond_14

    .line 670
    .line 671
    invoke-virtual {v6, v11, v4, v5}, Lc4/I1;->A(Landroid/os/Bundle;J)V

    .line 672
    .line 673
    .line 674
    goto :goto_9

    .line 675
    :cond_13
    move-object/from16 v19, v4

    .line 676
    .line 677
    move-object/from16 v18, v5

    .line 678
    .line 679
    :cond_14
    :goto_9
    const-string v3, "auto"

    .line 680
    .line 681
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    const-string v4, "_ffr"

    .line 686
    .line 687
    if-nez v3, :cond_18

    .line 688
    .line 689
    const-string v3, "_ssr"

    .line 690
    .line 691
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    if-eqz v3, :cond_18

    .line 696
    .line 697
    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    sget v4, LP3/e;->a:I

    .line 702
    .line 703
    if-eqz v3, :cond_16

    .line 704
    .line 705
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v4

    .line 713
    if-eqz v4, :cond_15

    .line 714
    .line 715
    goto :goto_a

    .line 716
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    goto :goto_b

    .line 721
    :cond_16
    :goto_a
    const/4 v3, 0x0

    .line 722
    :goto_b
    iget-object v4, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v4, Lc4/l0;

    .line 725
    .line 726
    iget-object v5, v4, Lc4/l0;->N:Lc4/Z;

    .line 727
    .line 728
    invoke-static {v5}, Lc4/l0;->i(Lc4/s0;)V

    .line 729
    .line 730
    .line 731
    iget-object v5, v5, Lc4/Z;->c0:LB0/c;

    .line 732
    .line 733
    invoke-virtual {v5}, LB0/c;->n()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v5

    .line 737
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    if-nez v5, :cond_17

    .line 742
    .line 743
    iget-object v4, v4, Lc4/l0;->N:Lc4/Z;

    .line 744
    .line 745
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 746
    .line 747
    .line 748
    iget-object v4, v4, Lc4/Z;->c0:LB0/c;

    .line 749
    .line 750
    invoke-virtual {v4, v3}, LB0/c;->o(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    goto :goto_c

    .line 754
    :cond_17
    iget-object v0, v4, Lc4/l0;->O:Lc4/T;

    .line 755
    .line 756
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 757
    .line 758
    .line 759
    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 760
    .line 761
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 762
    .line 763
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :cond_18
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    if-eqz v3, :cond_19

    .line 772
    .line 773
    iget-object v3, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast v3, Lc4/l0;

    .line 776
    .line 777
    iget-object v3, v3, Lc4/l0;->N:Lc4/Z;

    .line 778
    .line 779
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 780
    .line 781
    .line 782
    iget-object v3, v3, Lc4/Z;->c0:LB0/c;

    .line 783
    .line 784
    invoke-virtual {v3}, LB0/c;->n()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-nez v5, :cond_19

    .line 793
    .line 794
    invoke-virtual {v11, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    :cond_19
    :goto_c
    new-instance v14, Ljava/util/ArrayList;

    .line 798
    .line 799
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    sget-object v3, Lc4/E;->b1:Lc4/D;

    .line 806
    .line 807
    iget-object v4, v0, Lc4/l0;->M:Lc4/h;

    .line 808
    .line 809
    const/4 v15, 0x0

    .line 810
    invoke-virtual {v4, v15, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 811
    .line 812
    .line 813
    move-result v3

    .line 814
    if-eqz v3, :cond_1a

    .line 815
    .line 816
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 820
    .line 821
    .line 822
    iget-boolean v3, v1, Lc4/k1;->J:Z

    .line 823
    .line 824
    move-object/from16 v5, v18

    .line 825
    .line 826
    goto :goto_d

    .line 827
    :cond_1a
    invoke-static/range {v18 .. v18}, Lc4/l0;->i(Lc4/s0;)V

    .line 828
    .line 829
    .line 830
    move-object/from16 v5, v18

    .line 831
    .line 832
    iget-object v3, v5, Lc4/Z;->Z:Lc4/Y;

    .line 833
    .line 834
    invoke-virtual {v3}, Lc4/Y;->b()Z

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    :goto_d
    invoke-static {v5}, Lc4/l0;->i(Lc4/s0;)V

    .line 839
    .line 840
    .line 841
    iget-object v4, v5, Lc4/Z;->W:LE1/I;

    .line 842
    .line 843
    invoke-virtual {v4}, LE1/I;->a()J

    .line 844
    .line 845
    .line 846
    move-result-wide v20

    .line 847
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 848
    .line 849
    const-wide/16 v22, 0x0

    .line 850
    .line 851
    cmp-long v4, v20, v22

    .line 852
    .line 853
    if-lez v4, :cond_1c

    .line 854
    .line 855
    move-object/from16 v16, v12

    .line 856
    .line 857
    move-object/from16 p5, v13

    .line 858
    .line 859
    move-wide/from16 v12, p3

    .line 860
    .line 861
    invoke-virtual {v5, v12, v13}, Lc4/Z;->x(J)Z

    .line 862
    .line 863
    .line 864
    move-result v4

    .line 865
    if-eqz v4, :cond_1b

    .line 866
    .line 867
    if-eqz v3, :cond_1b

    .line 868
    .line 869
    invoke-static/range {v19 .. v19}, Lc4/l0;->k(Lc4/s0;)V

    .line 870
    .line 871
    .line 872
    const-string v3, "Current session is expired, remove the session number, ID, and engagement time"

    .line 873
    .line 874
    move-object/from16 v4, v19

    .line 875
    .line 876
    iget-object v15, v4, Lc4/T;->T:Lc4/Q;

    .line 877
    .line 878
    invoke-virtual {v15, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    .line 883
    .line 884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 885
    .line 886
    .line 887
    move-result-wide v19

    .line 888
    const/4 v15, 0x0

    .line 889
    const-string v21, "auto"

    .line 890
    .line 891
    const-string v22, "_sid"

    .line 892
    .line 893
    move-object v3, v1

    .line 894
    move-object/from16 v1, p0

    .line 895
    .line 896
    move-object v9, v2

    .line 897
    move-object/from16 v23, v3

    .line 898
    .line 899
    move-wide/from16 v2, v19

    .line 900
    .line 901
    move-object/from16 v19, v4

    .line 902
    .line 903
    move-object v4, v15

    .line 904
    move-object v15, v5

    .line 905
    move-object/from16 v5, v21

    .line 906
    .line 907
    move-object/from16 v20, v6

    .line 908
    .line 909
    move-object/from16 v6, v22

    .line 910
    .line 911
    invoke-virtual/range {v1 .. v6}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 918
    .line 919
    .line 920
    move-result-wide v2

    .line 921
    const/4 v4, 0x0

    .line 922
    const-string v5, "auto"

    .line 923
    .line 924
    const-string v6, "_sno"

    .line 925
    .line 926
    move-object/from16 v1, p0

    .line 927
    .line 928
    invoke-virtual/range {v1 .. v6}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 935
    .line 936
    .line 937
    move-result-wide v2

    .line 938
    const/4 v4, 0x0

    .line 939
    const-string v5, "auto"

    .line 940
    .line 941
    const-string v6, "_se"

    .line 942
    .line 943
    move-object/from16 v1, p0

    .line 944
    .line 945
    invoke-virtual/range {v1 .. v6}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    iget-object v1, v15, Lc4/Z;->X:LE1/I;

    .line 949
    .line 950
    const-wide/16 v2, 0x0

    .line 951
    .line 952
    invoke-virtual {v1, v2, v3}, LE1/I;->b(J)V

    .line 953
    .line 954
    .line 955
    goto :goto_e

    .line 956
    :cond_1b
    move-object/from16 v23, v1

    .line 957
    .line 958
    move-object v9, v2

    .line 959
    move-object/from16 v20, v6

    .line 960
    .line 961
    const-wide/16 v2, 0x0

    .line 962
    .line 963
    goto :goto_e

    .line 964
    :cond_1c
    move-object/from16 v23, v1

    .line 965
    .line 966
    move-object v9, v2

    .line 967
    move-object/from16 v20, v6

    .line 968
    .line 969
    move-object/from16 v16, v12

    .line 970
    .line 971
    move-object/from16 p5, v13

    .line 972
    .line 973
    const-wide/16 v2, 0x0

    .line 974
    .line 975
    move-wide/from16 v12, p3

    .line 976
    .line 977
    :goto_e
    const-string v1, "extend_session"

    .line 978
    .line 979
    invoke-virtual {v11, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 980
    .line 981
    .line 982
    move-result-wide v1

    .line 983
    const-wide/16 v3, 0x1

    .line 984
    .line 985
    cmp-long v5, v1, v3

    .line 986
    .line 987
    if-nez v5, :cond_1d

    .line 988
    .line 989
    invoke-static/range {v19 .. v19}, Lc4/l0;->k(Lc4/s0;)V

    .line 990
    .line 991
    .line 992
    const-string v1, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 993
    .line 994
    move-object/from16 v2, v19

    .line 995
    .line 996
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 997
    .line 998
    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    move-object/from16 v2, v17

    .line 1002
    .line 1003
    iget-object v1, v2, Lc4/l0;->Q:Lc4/k1;

    .line 1004
    .line 1005
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v1, v1, Lc4/k1;->K:LZ3/o;

    .line 1009
    .line 1010
    const/4 v2, 0x1

    .line 1011
    invoke-virtual {v1, v12, v13, v2}, LZ3/o;->C(JZ)V

    .line 1012
    .line 1013
    .line 1014
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    .line 1015
    .line 1016
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1027
    .line 1028
    .line 1029
    move-result v2

    .line 1030
    const/4 v3, 0x0

    .line 1031
    :goto_f
    if-ge v3, v2, :cond_22

    .line 1032
    .line 1033
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v4

    .line 1037
    check-cast v4, Ljava/lang/String;

    .line 1038
    .line 1039
    if-eqz v4, :cond_21

    .line 1040
    .line 1041
    invoke-static/range {v20 .. v20}, Lc4/l0;->i(Lc4/s0;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v5

    .line 1048
    instance-of v6, v5, Landroid/os/Bundle;

    .line 1049
    .line 1050
    if-eqz v6, :cond_1e

    .line 1051
    .line 1052
    check-cast v5, Landroid/os/Bundle;

    .line 1053
    .line 1054
    const/4 v6, 0x1

    .line 1055
    new-array v15, v6, [Landroid/os/Bundle;

    .line 1056
    .line 1057
    const/4 v6, 0x0

    .line 1058
    aput-object v5, v15, v6

    .line 1059
    .line 1060
    move-object v6, v15

    .line 1061
    goto :goto_10

    .line 1062
    :cond_1e
    instance-of v6, v5, [Landroid/os/Parcelable;

    .line 1063
    .line 1064
    if-eqz v6, :cond_1f

    .line 1065
    .line 1066
    check-cast v5, [Landroid/os/Parcelable;

    .line 1067
    .line 1068
    array-length v6, v5

    .line 1069
    const-class v15, [Landroid/os/Bundle;

    .line 1070
    .line 1071
    invoke-static {v5, v6, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    move-object v6, v5

    .line 1076
    check-cast v6, [Landroid/os/Bundle;

    .line 1077
    .line 1078
    goto :goto_10

    .line 1079
    :cond_1f
    instance-of v6, v5, Ljava/util/ArrayList;

    .line 1080
    .line 1081
    if-eqz v6, :cond_20

    .line 1082
    .line 1083
    check-cast v5, Ljava/util/ArrayList;

    .line 1084
    .line 1085
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1086
    .line 1087
    .line 1088
    move-result v6

    .line 1089
    new-array v6, v6, [Landroid/os/Bundle;

    .line 1090
    .line 1091
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v5

    .line 1095
    move-object v6, v5

    .line 1096
    check-cast v6, [Landroid/os/Bundle;

    .line 1097
    .line 1098
    goto :goto_10

    .line 1099
    :cond_20
    const/4 v6, 0x0

    .line 1100
    :goto_10
    if-eqz v6, :cond_21

    .line 1101
    .line 1102
    invoke-virtual {v11, v4, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1103
    .line 1104
    .line 1105
    :cond_21
    const/4 v4, 0x1

    .line 1106
    add-int/2addr v3, v4

    .line 1107
    goto :goto_f

    .line 1108
    :cond_22
    const/4 v11, 0x0

    .line 1109
    :goto_11
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-ge v11, v1, :cond_27

    .line 1114
    .line 1115
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    check-cast v1, Landroid/os/Bundle;

    .line 1120
    .line 1121
    if-eqz v11, :cond_23

    .line 1122
    .line 1123
    const-string v2, "_ep"

    .line 1124
    .line 1125
    goto :goto_12

    .line 1126
    :cond_23
    move-object/from16 v2, p2

    .line 1127
    .line 1128
    :goto_12
    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    move-object/from16 v15, v20

    .line 1132
    .line 1133
    if-eqz p7, :cond_24

    .line 1134
    .line 1135
    invoke-virtual {v15, v1}, Lc4/I1;->A0(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    :cond_24
    move-object v5, v1

    .line 1140
    new-instance v6, Lc4/u;

    .line 1141
    .line 1142
    new-instance v3, Lc4/t;

    .line 1143
    .line 1144
    invoke-direct {v3, v5}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 1145
    .line 1146
    .line 1147
    move-object v1, v6

    .line 1148
    move-object/from16 v4, p1

    .line 1149
    .line 1150
    move-object v8, v5

    .line 1151
    move-object/from16 p8, v9

    .line 1152
    .line 1153
    move-object v9, v6

    .line 1154
    move-wide/from16 v5, p3

    .line 1155
    .line 1156
    invoke-direct/range {v1 .. v6}, Lc4/u;-><init>(Ljava/lang/String;Lc4/t;Ljava/lang/String;J)V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v10}, Lc4/l0;->r()Lc4/d1;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v1}, Lc4/B;->n()V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v1}, Lc4/d1;->F()V

    .line 1173
    .line 1174
    .line 1175
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 1176
    .line 1177
    check-cast v2, Lc4/l0;

    .line 1178
    .line 1179
    invoke-virtual {v2}, Lc4/l0;->o()Lc4/N;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v2

    .line 1183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1184
    .line 1185
    .line 1186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v3

    .line 1190
    const/4 v4, 0x0

    .line 1191
    invoke-static {v9, v3, v4}, LJ3/v;->a(Lc4/u;Landroid/os/Parcel;I)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1199
    .line 1200
    .line 1201
    array-length v3, v4

    .line 1202
    const/high16 v5, 0x20000

    .line 1203
    .line 1204
    if-le v3, v5, :cond_25

    .line 1205
    .line 1206
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 1207
    .line 1208
    check-cast v2, Lc4/l0;

    .line 1209
    .line 1210
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 1211
    .line 1212
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 1213
    .line 1214
    .line 1215
    const-string v3, "Event is too long for local database. Sending event directly to service"

    .line 1216
    .line 1217
    iget-object v2, v2, Lc4/T;->M:Lc4/Q;

    .line 1218
    .line 1219
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    const/4 v2, 0x1

    .line 1223
    const/16 v20, 0x0

    .line 1224
    .line 1225
    goto :goto_13

    .line 1226
    :cond_25
    const/4 v3, 0x0

    .line 1227
    invoke-virtual {v2, v3, v4}, Lc4/N;->u(I[B)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v2

    .line 1231
    move/from16 v20, v2

    .line 1232
    .line 1233
    const/4 v2, 0x1

    .line 1234
    :goto_13
    invoke-virtual {v1, v2}, Lc4/d1;->B(Z)Lc4/J1;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v19

    .line 1238
    new-instance v2, LE1/N;

    .line 1239
    .line 1240
    const/16 v22, 0x2

    .line 1241
    .line 1242
    move-object/from16 v17, v2

    .line 1243
    .line 1244
    move-object/from16 v18, v1

    .line 1245
    .line 1246
    move-object/from16 v21, v9

    .line 1247
    .line 1248
    invoke-direct/range {v17 .. v22}, LE1/N;-><init>(Lc4/d1;Lc4/J1;ZLM3/a;I)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v1, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 1252
    .line 1253
    .line 1254
    if-nez p6, :cond_26

    .line 1255
    .line 1256
    iget-object v1, v7, Lc4/K0;->K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1257
    .line 1258
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v9

    .line 1262
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1263
    .line 1264
    .line 1265
    move-result v1

    .line 1266
    if-eqz v1, :cond_26

    .line 1267
    .line 1268
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    check-cast v1, Lc4/z0;

    .line 1273
    .line 1274
    new-instance v4, Landroid/os/Bundle;

    .line 1275
    .line 1276
    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1277
    .line 1278
    .line 1279
    move-wide/from16 v2, p3

    .line 1280
    .line 1281
    move-object/from16 v5, p1

    .line 1282
    .line 1283
    move-object/from16 v6, p2

    .line 1284
    .line 1285
    invoke-interface/range {v1 .. v6}, Lc4/z0;->a(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    goto :goto_14

    .line 1289
    :cond_26
    const/4 v1, 0x1

    .line 1290
    add-int/2addr v11, v1

    .line 1291
    move-object/from16 v8, p1

    .line 1292
    .line 1293
    move-object/from16 v9, p8

    .line 1294
    .line 1295
    move-object/from16 v20, v15

    .line 1296
    .line 1297
    goto/16 :goto_11

    .line 1298
    .line 1299
    :cond_27
    invoke-static/range {v16 .. v16}, Lc4/l0;->j(Lc4/B;)V

    .line 1300
    .line 1301
    .line 1302
    move-object/from16 v1, v16

    .line 1303
    .line 1304
    const/4 v2, 0x0

    .line 1305
    invoke-virtual {v1, v2}, Lc4/V0;->t(Z)Lc4/S0;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    if-eqz v1, :cond_28

    .line 1310
    .line 1311
    move-object/from16 v1, p2

    .line 1312
    .line 1313
    move-object/from16 v2, p5

    .line 1314
    .line 1315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v1

    .line 1319
    if-eqz v1, :cond_28

    .line 1320
    .line 1321
    invoke-static/range {v23 .. v23}, Lc4/l0;->j(Lc4/B;)V

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    .line 1326
    .line 1327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1328
    .line 1329
    .line 1330
    move-result-wide v0

    .line 1331
    move-object/from16 v2, v23

    .line 1332
    .line 1333
    iget-object v2, v2, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 1334
    .line 1335
    const/4 v3, 0x1

    .line 1336
    invoke-virtual {v2, v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/PN;->b(JZZ)Z

    .line 1337
    .line 1338
    .line 1339
    :cond_28
    :goto_15
    return-void

    .line 1340
    :cond_29
    iget-object v0, v7, Lc1/d;->G:Ljava/lang/Object;

    .line 1341
    .line 1342
    check-cast v0, Lc4/l0;

    .line 1343
    .line 1344
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 1345
    .line 1346
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 1347
    .line 1348
    .line 1349
    const-string v1, "Event not sent since app measurement is disabled"

    .line 1350
    .line 1351
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 1352
    .line 1353
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    return-void
.end method

.method public final B()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lc4/K0;->T:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/K0;->M()Ljava/util/PriorityQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget-boolean v1, p0, Lc4/K0;->O:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lc4/K0;->M()Ljava/util/PriorityQueue;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lc4/o1;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lc4/l0;

    .line 37
    .line 38
    iget-object v3, v2, Lc4/l0;->R:Lc4/I1;

    .line 39
    .line 40
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, v3, Lc4/I1;->L:LI1/d;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    iget-object v4, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Lc4/l0;

    .line 50
    .line 51
    iget-object v4, v4, Lc4/l0;->G:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v4}, LI1/d;->b(Landroid/content/Context;)LI1/d;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iput-object v4, v3, Lc4/I1;->L:LI1/d;

    .line 58
    .line 59
    :cond_1
    iget-object v3, v3, Lc4/I1;->L:LI1/d;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    iput-boolean v4, p0, Lc4/K0;->O:Z

    .line 65
    .line 66
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 67
    .line 68
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 69
    .line 70
    .line 71
    const-string v4, "Registering trigger URI"

    .line 72
    .line 73
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 74
    .line 75
    iget-object v5, v1, Lc4/o1;->G:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v5, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v3, v2}, LI1/d;->f(Landroid/net/Uri;)LD4/b;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    iput-boolean v0, p0, Lc4/K0;->O:Z

    .line 91
    .line 92
    invoke-virtual {p0}, Lc4/K0;->M()Ljava/util/PriorityQueue;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    new-instance v0, Lp2/b;

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    invoke-direct {v0, p0, v3}, Lp2/b;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Lm2/c;

    .line 107
    .line 108
    const/16 v4, 0x14

    .line 109
    .line 110
    invoke-direct {v3, p0, v1, v4}, Lm2/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    new-instance v1, LK3/V;

    .line 114
    .line 115
    const/16 v4, 0x1b

    .line 116
    .line 117
    invoke-direct {v1, v2, v3, v4}, LK3/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v2, v1, v0}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    return-void
.end method

.method public final C(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "app_id"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lc4/l0;

    .line 24
    .line 25
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 26
    .line 27
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    .line 31
    .line 32
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-class v1, Ljava/lang/String;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string p1, "origin"

    .line 47
    .line 48
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v3, "name"

    .line 52
    .line 53
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v4, "value"

    .line 57
    .line 58
    const-class v5, Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v5, "trigger_event_name"

    .line 64
    .line 65
    invoke-static {v0, v5, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-wide/16 v6, 0x0

    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v7, "trigger_timeout"

    .line 75
    .line 76
    const-class v8, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-static {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v9, "timed_out_event_name"

    .line 82
    .line 83
    invoke-static {v0, v9, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v9, "timed_out_event_params"

    .line 87
    .line 88
    const-class v10, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-static {v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v9, "triggered_event_name"

    .line 94
    .line 95
    invoke-static {v0, v9, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v9, "triggered_event_params"

    .line 99
    .line 100
    invoke-static {v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v9, "time_to_live"

    .line 104
    .line 105
    invoke-static {v0, v9, v8, v6}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v6, "expired_event_name"

    .line 109
    .line 110
    invoke-static {v0, v6, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v1, "expired_event_params"

    .line 114
    .line 115
    invoke-static {v0, v1, v10, v2}, Lcom/google/android/gms/internal/ads/Cw;->F(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const-string p1, "creation_timestamp"

    .line 140
    .line 141
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p3, Lc4/l0;

    .line 155
    .line 156
    iget-object v1, p3, Lc4/l0;->R:Lc4/I1;

    .line 157
    .line 158
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p1}, Lc4/I1;->u0(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iget-object v2, p3, Lc4/l0;->S:Lc4/O;

    .line 166
    .line 167
    iget-object v3, p3, Lc4/l0;->O:Lc4/T;

    .line 168
    .line 169
    if-nez v1, :cond_7

    .line 170
    .line 171
    iget-object v1, p3, Lc4/l0;->R:Lc4/I1;

    .line 172
    .line 173
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, p2, p1}, Lc4/I1;->q0(Ljava/lang/Object;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_6

    .line 181
    .line 182
    invoke-virtual {v1, p2, p1}, Lc4/I1;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-nez v1, :cond_1

    .line 187
    .line 188
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, p1}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string p3, "Unable to normalize conditional user property value"

    .line 196
    .line 197
    iget-object v0, v3, Lc4/T;->L:Lc4/Q;

    .line 198
    .line 199
    invoke-virtual {v0, p1, p2, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->K0(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v6

    .line 210
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    const-wide/16 v4, 0x1

    .line 219
    .line 220
    const-wide v10, 0x39ef8b000L

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    if-nez p2, :cond_3

    .line 226
    .line 227
    cmp-long p2, v6, v10

    .line 228
    .line 229
    if-gtz p2, :cond_2

    .line 230
    .line 231
    cmp-long p2, v6, v4

    .line 232
    .line 233
    if-gez p2, :cond_3

    .line 234
    .line 235
    :cond_2
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, p1}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const-string p3, "Invalid conditional user property timeout"

    .line 247
    .line 248
    iget-object v0, v3, Lc4/T;->L:Lc4/Q;

    .line 249
    .line 250
    invoke-virtual {v0, p1, p2, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_3
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    cmp-long p2, v6, v10

    .line 259
    .line 260
    if-gtz p2, :cond_5

    .line 261
    .line 262
    cmp-long p2, v6, v4

    .line 263
    .line 264
    if-gez p2, :cond_4

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_4
    iget-object p1, p3, Lc4/l0;->P:Lc4/j0;

    .line 268
    .line 269
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 270
    .line 271
    .line 272
    new-instance p2, Lc4/D0;

    .line 273
    .line 274
    const/4 p3, 0x1

    .line 275
    invoke-direct {p2, p0, v0, p3}, Lc4/D0;-><init>(Lc4/K0;Landroid/os/Bundle;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_5
    :goto_0
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, p1}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    const-string p3, "Invalid conditional user property time to live"

    .line 294
    .line 295
    iget-object v0, v3, Lc4/T;->L:Lc4/Q;

    .line 296
    .line 297
    invoke-virtual {v0, p1, p2, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_6
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, p1}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const-string p3, "Invalid conditional user property value"

    .line 309
    .line 310
    iget-object v0, v3, Lc4/T;->L:Lc4/Q;

    .line 311
    .line 312
    invoke-virtual {v0, p1, p2, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_7
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, p1}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    const-string p2, "Invalid conditional user property name"

    .line 324
    .line 325
    iget-object p3, v3, Lc4/T;->L:Lc4/Q;

    .line 326
    .line 327
    invoke-virtual {p3, p1, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final D(Landroid/os/Bundle;IJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc4/x0;->c:Lc4/x0;

    .line 5
    .line 6
    sget-object v0, Lc4/v0;->H:Lc4/v0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/v0;->G:[Lc4/w0;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-ge v2, v1, :cond_3

    .line 14
    .line 15
    aget-object v4, v0, v2

    .line 16
    .line 17
    iget-object v4, v4, Lc4/w0;->G:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    const-string v5, "granted"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v5, "denied"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 53
    .line 54
    move-object v3, v4

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lc4/l0;

    .line 64
    .line 65
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 66
    .line 67
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "Ignoring invalid consent setting"

    .line 71
    .line 72
    iget-object v1, v1, Lc4/T;->Q:Lc4/Q;

    .line 73
    .line 74
    invoke-virtual {v1, v3, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 78
    .line 79
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    .line 83
    .line 84
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lc4/l0;

    .line 92
    .line 93
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 94
    .line 95
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lc4/j0;->z()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-static {p2, p1}, Lc4/x0;->d(ILandroid/os/Bundle;)Lc4/x0;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v2, v1, Lc4/x0;->a:Ljava/util/EnumMap;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    sget-object v4, Lc4/u0;->H:Lc4/u0;

    .line 121
    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lc4/u0;

    .line 129
    .line 130
    if-eq v3, v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0, v1, v0}, Lc4/K0;->G(Lc4/x0;Z)V

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-static {p2, p1}, Lc4/q;->a(ILandroid/os/Bundle;)Lc4/q;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget-object v2, v1, Lc4/q;->e:Ljava/util/EnumMap;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_8

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lc4/u0;

    .line 160
    .line 161
    if-eq v3, v4, :cond_7

    .line 162
    .line 163
    invoke-virtual {p0, v1, v0}, Lc4/K0;->E(Lc4/q;Z)V

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-static {p1}, Lc4/q;->d(Landroid/os/Bundle;)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_b

    .line 171
    .line 172
    const/16 v1, -0x1e

    .line 173
    .line 174
    if-ne p2, v1, :cond_9

    .line 175
    .line 176
    const-string p2, "tcf"

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_9
    const-string p2, "app"

    .line 180
    .line 181
    :goto_3
    if-eqz v0, :cond_a

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const-string v6, "allow_personalized_ads"

    .line 188
    .line 189
    move-object v1, p0

    .line 190
    move-wide v2, p3

    .line 191
    move-object v5, p2

    .line 192
    invoke-virtual/range {v1 .. v6}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const-string v3, "allow_personalized_ads"

    .line 201
    .line 202
    const/4 v5, 0x0

    .line 203
    move-object v1, p0

    .line 204
    move-object v2, p2

    .line 205
    move-wide v6, p3

    .line 206
    invoke-virtual/range {v1 .. v7}, Lc4/K0;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 207
    .line 208
    .line 209
    :cond_b
    return-void
.end method

.method public final E(Lc4/q;Z)V
    .locals 2

    .line 1
    new-instance v0, LK3/V;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, LK3/V;->run()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lc4/l0;

    .line 20
    .line 21
    iget-object p1, p1, Lc4/l0;->P:Lc4/j0;

    .line 22
    .line 23
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final F(Lc4/x0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc4/w0;->I:Lc4/w0;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lc4/x0;->k(Lc4/w0;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lc4/w0;->H:Lc4/w0;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lc4/x0;->k(Lc4/w0;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_1
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lc4/l0;

    .line 28
    .line 29
    invoke-virtual {p1}, Lc4/l0;->r()Lc4/d1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lc4/d1;->y()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_2
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lc4/l0;

    .line 44
    .line 45
    iget-object v3, v0, Lc4/l0;->P:Lc4/j0;

    .line 46
    .line 47
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, v0, Lc4/l0;->i0:Z

    .line 54
    .line 55
    if-eq p1, v3, :cond_5

    .line 56
    .line 57
    iget-object v3, v0, Lc4/l0;->P:Lc4/j0;

    .line 58
    .line 59
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 63
    .line 64
    .line 65
    iput-boolean p1, v0, Lc4/l0;->i0:Z

    .line 66
    .line 67
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lc4/l0;

    .line 70
    .line 71
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 72
    .line 73
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "measurement_enabled_from_api"

    .line 84
    .line 85
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/4 v0, 0x0

    .line 105
    :goto_3
    if-eqz p1, :cond_4

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1, v1}, Lc4/K0;->K(Ljava/lang/Boolean;Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method

.method public final G(Lc4/x0;Z)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lc4/x0;->b:I

    .line 5
    .line 6
    const/16 v1, -0xa

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    sget-object v2, Lc4/w0;->H:Lc4/w0;

    .line 11
    .line 12
    iget-object v3, p1, Lc4/x0;->a:Ljava/util/EnumMap;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lc4/u0;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lc4/u0;->H:Lc4/u0;

    .line 23
    .line 24
    :cond_0
    sget-object v3, Lc4/u0;->H:Lc4/u0;

    .line 25
    .line 26
    if-ne v2, v3, :cond_3

    .line 27
    .line 28
    sget-object v2, Lc4/w0;->I:Lc4/w0;

    .line 29
    .line 30
    iget-object v4, p1, Lc4/x0;->a:Ljava/util/EnumMap;

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lc4/u0;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    move-object v2, v3

    .line 41
    :cond_1
    if-eq v2, v3, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lc4/l0;

    .line 47
    .line 48
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 49
    .line 50
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 54
    .line 55
    const-string p2, "Ignoring empty consent settings"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    :goto_0
    iget-object v2, p0, Lc4/K0;->N:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v3, p0, Lc4/K0;->U:Lc4/x0;

    .line 65
    .line 66
    iget v3, v3, Lc4/x0;->b:I

    .line 67
    .line 68
    invoke-static {v0, v3}, Lc4/x0;->l(II)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x0

    .line 73
    if-eqz v3, :cond_7

    .line 74
    .line 75
    iget-object v3, p0, Lc4/K0;->U:Lc4/x0;

    .line 76
    .line 77
    iget-object v5, p1, Lc4/x0;->a:Ljava/util/EnumMap;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    new-array v7, v4, [Lc4/w0;

    .line 84
    .line 85
    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, [Lc4/w0;

    .line 90
    .line 91
    array-length v7, v6

    .line 92
    const/4 v8, 0x0

    .line 93
    :goto_1
    const/4 v9, 0x1

    .line 94
    if-ge v8, v7, :cond_5

    .line 95
    .line 96
    aget-object v10, v6, v8

    .line 97
    .line 98
    invoke-virtual {v5, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Lc4/u0;

    .line 103
    .line 104
    iget-object v12, v3, Lc4/x0;->a:Ljava/util/EnumMap;

    .line 105
    .line 106
    invoke-virtual {v12, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Lc4/u0;

    .line 111
    .line 112
    sget-object v12, Lc4/u0;->J:Lc4/u0;

    .line 113
    .line 114
    if-ne v11, v12, :cond_4

    .line 115
    .line 116
    if-eq v10, v12, :cond_4

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const/4 v3, 0x0

    .line 124
    :goto_2
    sget-object v5, Lc4/w0;->I:Lc4/w0;

    .line 125
    .line 126
    invoke-virtual {p1, v5}, Lc4/x0;->k(Lc4/w0;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    iget-object v6, p0, Lc4/K0;->U:Lc4/x0;

    .line 133
    .line 134
    invoke-virtual {v6, v5}, Lc4/x0;->k(Lc4/w0;)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_6

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    goto :goto_3

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :cond_6
    :goto_3
    iget-object v5, p0, Lc4/K0;->U:Lc4/x0;

    .line 146
    .line 147
    invoke-virtual {p1, v5}, Lc4/x0;->g(Lc4/x0;)Lc4/x0;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lc4/K0;->U:Lc4/x0;

    .line 152
    .line 153
    move-object v5, p1

    .line 154
    move v8, v4

    .line 155
    const/4 v4, 0x1

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    move-object v5, p1

    .line 158
    const/4 v3, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-nez v4, :cond_8

    .line 162
    .line 163
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Lc4/l0;

    .line 166
    .line 167
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 168
    .line 169
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p1, Lc4/T;->R:Lc4/Q;

    .line 173
    .line 174
    const-string p2, "Ignoring lower-priority consent settings, proposed settings"

    .line 175
    .line 176
    invoke-virtual {p1, v5, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_8
    iget-object p1, p0, Lc4/K0;->V:Ljava/util/concurrent/atomic/AtomicLong;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    if-eqz v3, :cond_a

    .line 187
    .line 188
    iget-object p1, p0, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Lc4/I0;

    .line 195
    .line 196
    const/4 v9, 0x0

    .line 197
    move-object v3, p1

    .line 198
    move-object v4, p0

    .line 199
    invoke-direct/range {v3 .. v9}, Lc4/I0;-><init>(Lc4/K0;Lc4/x0;JZI)V

    .line 200
    .line 201
    .line 202
    if-eqz p2, :cond_9

    .line 203
    .line 204
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lc4/I0;->run()V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_9
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p2, Lc4/l0;

    .line 214
    .line 215
    iget-object p2, p2, Lc4/l0;->P:Lc4/j0;

    .line 216
    .line 217
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, p1}, Lc4/j0;->y(Ljava/lang/Runnable;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_a
    new-instance p1, Lc4/I0;

    .line 225
    .line 226
    const/4 v9, 0x1

    .line 227
    move-object v3, p1

    .line 228
    move-object v4, p0

    .line 229
    invoke-direct/range {v3 .. v9}, Lc4/I0;-><init>(Lc4/K0;Lc4/x0;JZI)V

    .line 230
    .line 231
    .line 232
    if-eqz p2, :cond_b

    .line 233
    .line 234
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lc4/I0;->run()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_b
    const/16 p2, 0x1e

    .line 242
    .line 243
    if-eq v0, p2, :cond_d

    .line 244
    .line 245
    if-ne v0, v1, :cond_c

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_c
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast p2, Lc4/l0;

    .line 251
    .line 252
    iget-object p2, p2, Lc4/l0;->P:Lc4/j0;

    .line 253
    .line 254
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, p1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_d
    :goto_5
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p2, Lc4/l0;

    .line 264
    .line 265
    iget-object p2, p2, Lc4/l0;->P:Lc4/j0;

    .line 266
    .line 267
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, p1}, Lc4/j0;->y(Ljava/lang/Runnable;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    throw p1
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v6

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-object v4, p3

    .line 18
    move v5, p4

    .line 19
    invoke-virtual/range {v1 .. v7}, Lc4/K0;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move-object v3, p2

    .line 3
    move-object v0, p3

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    iget-object v4, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lc4/l0;

    .line 12
    .line 13
    iget-object v4, v4, Lc4/l0;->R:Lc4/I1;

    .line 14
    .line 15
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, p2}, Lc4/I1;->u0(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v4, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Lc4/l0;

    .line 26
    .line 27
    iget-object v4, v4, Lc4/l0;->R:Lc4/I1;

    .line 28
    .line 29
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 30
    .line 31
    .line 32
    const-string v5, "user property"

    .line 33
    .line 34
    invoke-virtual {v4, v5, p2}, Lc4/I1;->b0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v7, 0x6

    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    :goto_0
    const/4 v4, 0x6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v6, Lc4/y0;->i:[Ljava/lang/String;

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual {v4, v5, v6, v9, p2}, Lc4/I1;->Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    const/16 v4, 0xf

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v6, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v6, Lc4/l0;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v2, v5, p2}, Lc4/I1;->X(ILjava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v4, 0x0

    .line 70
    :goto_1
    iget-object v5, v8, Lc4/K0;->c0:LZ3/o;

    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    iget-object v0, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lc4/l0;

    .line 78
    .line 79
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 80
    .line 81
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v2, p2, v6}, Lc4/I1;->w(ILjava/lang/String;Z)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :cond_4
    iget-object v2, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lc4/l0;

    .line 100
    .line 101
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    .line 102
    .line 103
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const-string v3, "_ev"

    .line 111
    .line 112
    move-object p1, v5

    .line 113
    move-object p2, v2

    .line 114
    move p3, v4

    .line 115
    move-object p4, v3

    .line 116
    move-object/from16 p5, v0

    .line 117
    .line 118
    move/from16 p6, v1

    .line 119
    .line 120
    invoke-static/range {p1 .. p6}, Lc4/I1;->G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    if-nez p1, :cond_6

    .line 125
    .line 126
    const-string v4, "app"

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move-object v4, p1

    .line 130
    :goto_2
    if-eqz v0, :cond_b

    .line 131
    .line 132
    iget-object v7, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v7, Lc4/l0;

    .line 135
    .line 136
    iget-object v9, v7, Lc4/l0;->R:Lc4/I1;

    .line 137
    .line 138
    invoke-static {v9}, Lc4/l0;->i(Lc4/s0;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, p3, p2}, Lc4/I1;->q0(Ljava/lang/Object;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    iget-object v7, v7, Lc4/l0;->R:Lc4/I1;

    .line 146
    .line 147
    if-eqz v9, :cond_9

    .line 148
    .line 149
    invoke-static {v7}, Lc4/l0;->i(Lc4/s0;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v2, p2, v6}, Lc4/I1;->w(ILjava/lang/String;Z)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    instance-of v3, v0, Ljava/lang/String;

    .line 160
    .line 161
    if-nez v3, :cond_7

    .line 162
    .line 163
    instance-of v3, v0, Ljava/lang/CharSequence;

    .line 164
    .line 165
    if-eqz v3, :cond_8

    .line 166
    .line 167
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    :cond_8
    iget-object v0, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Lc4/l0;

    .line 178
    .line 179
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 180
    .line 181
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    const-string v3, "_ev"

    .line 189
    .line 190
    move-object p1, v5

    .line 191
    move-object p2, v0

    .line 192
    move p3, v9

    .line 193
    move-object p4, v3

    .line 194
    move-object/from16 p5, v2

    .line 195
    .line 196
    move/from16 p6, v1

    .line 197
    .line 198
    invoke-static/range {p1 .. p6}, Lc4/I1;->G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_9
    invoke-static {v7}, Lc4/l0;->i(Lc4/s0;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, p3, p2}, Lc4/I1;->t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-eqz v5, :cond_a

    .line 210
    .line 211
    iget-object v0, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Lc4/l0;

    .line 214
    .line 215
    iget-object v9, v0, Lc4/l0;->P:Lc4/j0;

    .line 216
    .line 217
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 218
    .line 219
    .line 220
    new-instance v10, Lc4/n0;

    .line 221
    .line 222
    const/4 v7, 0x1

    .line 223
    move-object v0, v10

    .line 224
    move-object v1, p0

    .line 225
    move-object v2, v4

    .line 226
    move-object v3, p2

    .line 227
    move-object v4, v5

    .line 228
    move-wide/from16 v5, p5

    .line 229
    .line 230
    invoke-direct/range {v0 .. v7}, Lc4/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9, v10}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 234
    .line 235
    .line 236
    :cond_a
    return-void

    .line 237
    :cond_b
    iget-object v0, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Lc4/l0;

    .line 240
    .line 241
    iget-object v9, v0, Lc4/l0;->P:Lc4/j0;

    .line 242
    .line 243
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 244
    .line 245
    .line 246
    new-instance v10, Lc4/n0;

    .line 247
    .line 248
    const/4 v7, 0x1

    .line 249
    const/4 v5, 0x0

    .line 250
    move-object v0, v10

    .line 251
    move-object v1, p0

    .line 252
    move-object v2, v4

    .line 253
    move-object v3, p2

    .line 254
    move-object v4, v5

    .line 255
    move-wide/from16 v5, p5

    .line 256
    .line 257
    invoke-direct/range {v0 .. v7}, Lc4/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v10}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public final J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p4}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p5}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 11
    .line 12
    .line 13
    const-string v0, "allow_personalized_ads"

    .line 14
    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    instance-of v0, p3, Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "_npa"

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object v0, p3

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string p5, "false"

    .line 44
    .line 45
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    const-wide/16 v3, 0x1

    .line 50
    .line 51
    if-eq v1, p3, :cond_0

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-wide v5, v3

    .line 57
    :goto_0
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p3, Lc4/l0;

    .line 60
    .line 61
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p3, p3, Lc4/l0;->N:Lc4/Z;

    .line 66
    .line 67
    invoke-static {p3}, Lc4/l0;->i(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    cmp-long v7, v5, v3

    .line 71
    .line 72
    if-nez v7, :cond_1

    .line 73
    .line 74
    const-string p5, "true"

    .line 75
    .line 76
    :cond_1
    iget-object p3, p3, Lc4/Z;->T:LB0/c;

    .line 77
    .line 78
    invoke-virtual {p3, p5}, LB0/c;->o(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object p3, v0

    .line 82
    :goto_1
    move-object p5, v2

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    if-nez p3, :cond_3

    .line 85
    .line 86
    iget-object p5, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p5, Lc4/l0;

    .line 89
    .line 90
    iget-object p5, p5, Lc4/l0;->N:Lc4/Z;

    .line 91
    .line 92
    invoke-static {p5}, Lc4/l0;->i(Lc4/s0;)V

    .line 93
    .line 94
    .line 95
    iget-object p5, p5, Lc4/Z;->T:LB0/c;

    .line 96
    .line 97
    const-string v0, "unset"

    .line 98
    .line 99
    invoke-virtual {p5, v0}, LB0/c;->o(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :goto_2
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lc4/l0;

    .line 106
    .line 107
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 108
    .line 109
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "non_personalized_ads(_npa)"

    .line 113
    .line 114
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 115
    .line 116
    const-string v3, "Setting user property(FE)"

    .line 117
    .line 118
    invoke-virtual {v0, v2, p3, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    move-object v7, p3

    .line 122
    move-object v8, p5

    .line 123
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p3, Lc4/l0;

    .line 126
    .line 127
    invoke-virtual {p3}, Lc4/l0;->f()Z

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    if-nez p5, :cond_5

    .line 132
    .line 133
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p1, Lc4/l0;

    .line 136
    .line 137
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 138
    .line 139
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 140
    .line 141
    .line 142
    const-string p2, "User property not set since app measurement is disabled"

    .line 143
    .line 144
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_5
    invoke-virtual {p3}, Lc4/l0;->g()Z

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-nez p3, :cond_6

    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p3, Lc4/l0;

    .line 160
    .line 161
    new-instance p5, Lc4/F1;

    .line 162
    .line 163
    move-object v4, p5

    .line 164
    move-wide v5, p1

    .line 165
    move-object v9, p4

    .line 166
    invoke-direct/range {v4 .. v9}, Lc4/F1;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3}, Lc4/l0;->r()Lc4/d1;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lc4/z;->m()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lc4/B;->n()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lc4/d1;->F()V

    .line 180
    .line 181
    .line 182
    iget-object p2, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p2, Lc4/l0;

    .line 185
    .line 186
    invoke-virtual {p2}, Lc4/l0;->o()Lc4/N;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-static {p5, p3}, LJ3/v;->b(Lc4/F1;Landroid/os/Parcel;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->marshall()[B

    .line 201
    .line 202
    .line 203
    move-result-object p4

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    .line 205
    .line 206
    .line 207
    array-length p3, p4

    .line 208
    const/high16 v0, 0x20000

    .line 209
    .line 210
    if-le p3, v0, :cond_7

    .line 211
    .line 212
    iget-object p2, p2, Lc1/d;->G:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p2, Lc4/l0;

    .line 215
    .line 216
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 217
    .line 218
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 219
    .line 220
    .line 221
    const-string p3, "User property too long for local database. Sending directly to service"

    .line 222
    .line 223
    iget-object p2, p2, Lc4/T;->M:Lc4/Q;

    .line 224
    .line 225
    invoke-virtual {p2, p3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const/4 p2, 0x0

    .line 229
    goto :goto_3

    .line 230
    :cond_7
    invoke-virtual {p2, v1, p4}, Lc4/N;->u(I[B)Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    :goto_3
    invoke-virtual {p1, v1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    new-instance p4, LE1/N;

    .line 239
    .line 240
    invoke-direct {p4, p1, p3, p2, p5}, LE1/N;-><init>(Lc4/d1;Lc4/J1;ZLc4/F1;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p4}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public final K(Ljava/lang/Boolean;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc4/l0;

    .line 10
    .line 11
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 12
    .line 13
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Setting app measurement enabled (FE)"

    .line 17
    .line 18
    iget-object v1, v1, Lc4/T;->S:Lc4/Q;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 24
    .line 25
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "measurement_enabled"

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v0, "measurement_enabled_from_api"

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p2, Lc4/l0;

    .line 91
    .line 92
    iget-object v0, p2, Lc4/l0;->P:Lc4/j0;

    .line 93
    .line 94
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 98
    .line 99
    .line 100
    iget-boolean p2, p2, Lc4/l0;->i0:Z

    .line 101
    .line 102
    if-nez p2, :cond_4

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    return-void

    .line 114
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lc4/K0;->L()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final L()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v1, v0, Lc4/l0;->N:Lc4/Z;

    .line 9
    .line 10
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lc4/Z;->T:LB0/c;

    .line 14
    .line 15
    invoke-virtual {v1}, LB0/c;->n()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const-string v3, "unset"

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-object v4, v0, Lc4/l0;->T:LP3/b;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    const/4 v8, 0x0

    .line 40
    const-string v9, "app"

    .line 41
    .line 42
    const-string v10, "_npa"

    .line 43
    .line 44
    move-object v5, p0

    .line 45
    invoke-virtual/range {v5 .. v10}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v3, "true"

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eq v2, v1, :cond_1

    .line 56
    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v5, 0x1

    .line 61
    .line 62
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    const-string v11, "app"

    .line 74
    .line 75
    const-string v12, "_npa"

    .line 76
    .line 77
    move-object v7, p0

    .line 78
    invoke-virtual/range {v7 .. v12}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lc4/l0;

    .line 84
    .line 85
    invoke-virtual {v1}, Lc4/l0;->f()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget-object v3, v0, Lc4/l0;->O:Lc4/T;

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iget-boolean v1, p0, Lc4/K0;->Y:Z

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 101
    .line 102
    iget-object v2, v3, Lc4/T;->S:Lc4/Q;

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lc4/K0;->r()V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lc4/l0;

    .line 113
    .line 114
    iget-object v1, v1, Lc4/l0;->Q:Lc4/k1;

    .line 115
    .line 116
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v1, Lc4/k1;->K:LZ3/o;

    .line 120
    .line 121
    invoke-virtual {v1}, LZ3/o;->A()V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 125
    .line 126
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Lc4/E0;

    .line 130
    .line 131
    const/4 v2, 0x2

    .line 132
    invoke-direct {v1, p0, v2}, Lc4/E0;-><init>(Lc4/K0;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "Updating Scion state (FE)"

    .line 143
    .line 144
    iget-object v1, v3, Lc4/T;->S:Lc4/Q;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lc4/l0;

    .line 152
    .line 153
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lc4/d1;->B(Z)Lc4/J1;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Lc4/Z0;

    .line 168
    .line 169
    const/4 v3, 0x3

    .line 170
    invoke-direct {v2, v0, v1, v3}, Lc4/Z0;-><init>(Lc4/d1;Lc4/J1;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final M()Ljava/util/PriorityQueue;
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/K0;->S:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/PriorityQueue;

    .line 6
    .line 7
    new-instance v0, Lc4/B0;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, LB/f;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {v1, v2}, LB/f;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lc4/J0;->h(Lc4/B0;LB/f;)Ljava/util/Comparator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lc4/J0;->p(Ljava/util/Comparator;)Ljava/util/PriorityQueue;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lc4/K0;->S:Ljava/util/PriorityQueue;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lc4/K0;->S:Ljava/util/PriorityQueue;

    .line 29
    .line 30
    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final r()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc4/l0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc4/l0;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lc4/l0;

    .line 22
    .line 23
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 24
    .line 25
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lc4/l0;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lc4/h;->z(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 48
    .line 49
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 50
    .line 51
    .line 52
    const-string v3, "Deferred Deep Link feature enabled."

    .line 53
    .line 54
    iget-object v1, v1, Lc4/T;->S:Lc4/Q;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lc4/l0;->P:Lc4/j0;

    .line 60
    .line 61
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lc4/E0;

    .line 65
    .line 66
    invoke-direct {v3, p0, v2}, Lc4/E0;-><init>(Lc4/K0;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lc4/l0;

    .line 75
    .line 76
    invoke-virtual {v1}, Lc4/l0;->r()Lc4/d1;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lc4/B;->n()V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {v1, v3}, Lc4/d1;->B(Z)Lc4/J1;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1}, Lc4/d1;->F()V

    .line 92
    .line 93
    .line 94
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v4, Lc4/l0;

    .line 97
    .line 98
    iget-object v4, v4, Lc4/l0;->M:Lc4/h;

    .line 99
    .line 100
    sget-object v5, Lc4/E;->m1:Lc4/D;

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    invoke-virtual {v4, v6, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 104
    .line 105
    .line 106
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v4, Lc4/l0;

    .line 109
    .line 110
    invoke-virtual {v4}, Lc4/l0;->o()Lc4/N;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-array v5, v2, [B

    .line 115
    .line 116
    const/4 v7, 0x3

    .line 117
    invoke-virtual {v4, v7, v5}, Lc4/N;->u(I[B)Z

    .line 118
    .line 119
    .line 120
    new-instance v4, Lc4/Z0;

    .line 121
    .line 122
    invoke-direct {v4, v1, v3}, Lc4/Z0;-><init>(Lc4/d1;Lc4/J1;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v2, p0, Lc4/K0;->Y:Z

    .line 129
    .line 130
    iget-object v1, v0, Lc4/l0;->N:Lc4/Z;

    .line 131
    .line 132
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lc1/d;->m()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v3, "previous_os_version"

    .line 143
    .line 144
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v4, Lc4/l0;

    .line 151
    .line 152
    invoke-virtual {v4}, Lc4/l0;->m()Lc4/r;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lc4/s0;->o()V

    .line 157
    .line 158
    .line 159
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_2

    .line 166
    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-nez v5, :cond_2

    .line 172
    .line 173
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    .line 183
    .line 184
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    .line 186
    .line 187
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_3

    .line 192
    .line 193
    invoke-virtual {v0}, Lc4/l0;->m()Lc4/r;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lc4/s0;->o()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_3

    .line 205
    .line 206
    new-instance v0, Landroid/os/Bundle;

    .line 207
    .line 208
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v1, "_po"

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v1, "auto"

    .line 217
    .line 218
    const-string v2, "_ou"

    .line 219
    .line 220
    invoke-virtual {p0, v1, v2, v0}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 221
    .line 222
    .line 223
    :cond_3
    :goto_0
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v1, v0, Lc4/l0;->T:LP3/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "name"

    .line 23
    .line 24
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "creation_timestamp"

    .line 28
    .line 29
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const-string p1, "expired_event_name"

    .line 35
    .line 36
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "expired_event_params"

    .line 40
    .line 41
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, v0, Lc4/l0;->P:Lc4/j0;

    .line 45
    .line 46
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lc4/D0;

    .line 50
    .line 51
    const/4 p3, 0x2

    .line 52
    invoke-direct {p2, p0, v3, p3}, Lc4/D0;-><init>(Lc4/K0;Landroid/os/Bundle;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v1, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v1, v1, Landroid/app/Application;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/Application;

    .line 26
    .line 27
    iget-object v1, p0, Lc4/K0;->I:Lcom/google/android/gms/internal/measurement/l0;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 9
    .line 10
    sget-object v2, Lc4/E;->X0:Lc4/D;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v3, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v1, v0, Lc4/l0;->P:Lc4/j0;

    .line 20
    .line 21
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lc4/j0;->z()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-static {}, LS3/g;->d()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "Getting trigger URIs (FE)"

    .line 45
    .line 46
    iget-object v3, v0, Lc4/T;->T:Lc4/Q;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lc4/C0;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v7, p0, v8, v2}, Lc4/C0;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v4, 0x2710

    .line 66
    .line 67
    const-string v6, "get trigger URIs"

    .line 68
    .line 69
    move-object v2, v1

    .line 70
    move-object v3, v8

    .line 71
    invoke-virtual/range {v2 .. v7}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/util/List;

    .line 79
    .line 80
    if-nez v2, :cond_0

    .line 81
    .line 82
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "Timed out waiting for get trigger URIs"

    .line 86
    .line 87
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, LK3/V;

    .line 97
    .line 98
    const/16 v3, 0x9

    .line 99
    .line 100
    invoke-direct {v0, p0, v2, v3}, LK3/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "Cannot get trigger URIs from main thread"

    .line 111
    .line 112
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 119
    .line 120
    .line 121
    const-string v1, "Cannot get trigger URIs from analytics worker thread"

    .line 122
    .line 123
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method

.method public final w()V
    .locals 68

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "PurposeDiagnostics"

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v12, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v12, Lc4/l0;

    .line 11
    .line 12
    iget-object v13, v12, Lc4/l0;->O:Lc4/T;

    .line 13
    .line 14
    invoke-static {v13}, Lc4/l0;->k(Lc4/s0;)V

    .line 15
    .line 16
    .line 17
    const-string v14, "Handle tcf update."

    .line 18
    .line 19
    iget-object v13, v13, Lc4/T;->S:Lc4/Q;

    .line 20
    .line 21
    invoke-virtual {v13, v14}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v13, v12, Lc4/l0;->N:Lc4/Z;

    .line 25
    .line 26
    invoke-static {v13}, Lc4/l0;->i(Lc4/s0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v13}, Lc4/Z;->q()Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v14

    .line 33
    new-instance v15, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lc4/E;->k1:Lc4/D;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v2, v3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    check-cast v17, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v17

    .line 51
    const-string v3, "CmpSdkID"

    .line 52
    .line 53
    const-string v4, "PolicyVersion"

    .line 54
    .line 55
    const-string v7, "EnableAdvertiserConsentMode"

    .line 56
    .line 57
    const-string v8, "gdprApplies"

    .line 58
    .line 59
    const-string v18, "0"

    .line 60
    .line 61
    const-string v19, "1"

    .line 62
    .line 63
    const-string v5, "Version"

    .line 64
    .line 65
    const-string v10, "IABTCF_VendorConsents"

    .line 66
    .line 67
    const-string v11, "IABTCF_PurposeConsents"

    .line 68
    .line 69
    const-string v9, "IABTCF_EnableAdvertiserConsentMode"

    .line 70
    .line 71
    const-string v6, "IABTCF_gdprApplies"

    .line 72
    .line 73
    const-string v0, "IABTCF_PolicyVersion"

    .line 74
    .line 75
    move-object/from16 v20, v13

    .line 76
    .line 77
    const-string v13, "IABTCF_CmpSdkID"

    .line 78
    .line 79
    move-object/from16 v21, v2

    .line 80
    .line 81
    const-string v2, ""

    .line 82
    .line 83
    move-object/from16 v22, v12

    .line 84
    .line 85
    if-eqz v17, :cond_17

    .line 86
    .line 87
    sget-object v15, Lc4/n1;->a:Lz4/d0;

    .line 88
    .line 89
    sget-object v15, Lcom/google/android/gms/internal/measurement/a2;->H:Lcom/google/android/gms/internal/measurement/a2;

    .line 90
    .line 91
    sget-object v12, Lc4/m1;->G:Lc4/m1;

    .line 92
    .line 93
    move-object/from16 v38, v2

    .line 94
    .line 95
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 96
    .line 97
    invoke-direct {v2, v15, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object/from16 v39, v1

    .line 101
    .line 102
    sget-object v1, Lcom/google/android/gms/internal/measurement/a2;->I:Lcom/google/android/gms/internal/measurement/a2;

    .line 103
    .line 104
    move-object/from16 v23, v3

    .line 105
    .line 106
    sget-object v3, Lc4/m1;->H:Lc4/m1;

    .line 107
    .line 108
    move-object/from16 v24, v4

    .line 109
    .line 110
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 111
    .line 112
    invoke-direct {v4, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lcom/google/android/gms/internal/measurement/a2;->J:Lcom/google/android/gms/internal/measurement/a2;

    .line 116
    .line 117
    move-object/from16 v25, v7

    .line 118
    .line 119
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 120
    .line 121
    invoke-direct {v7, v1, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object/from16 v26, v8

    .line 125
    .line 126
    sget-object v8, Lcom/google/android/gms/internal/measurement/a2;->K:Lcom/google/android/gms/internal/measurement/a2;

    .line 127
    .line 128
    move-object/from16 v55, v5

    .line 129
    .line 130
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 131
    .line 132
    invoke-direct {v5, v8, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v12, Lcom/google/android/gms/internal/measurement/a2;->L:Lcom/google/android/gms/internal/measurement/a2;

    .line 136
    .line 137
    move-object/from16 v56, v8

    .line 138
    .line 139
    new-instance v8, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 140
    .line 141
    invoke-direct {v8, v12, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v57, v12

    .line 145
    .line 146
    sget-object v12, Lcom/google/android/gms/internal/measurement/a2;->M:Lcom/google/android/gms/internal/measurement/a2;

    .line 147
    .line 148
    move-object/from16 v40, v1

    .line 149
    .line 150
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 151
    .line 152
    invoke-direct {v1, v12, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object v12, Lcom/google/android/gms/internal/measurement/a2;->N:Lcom/google/android/gms/internal/measurement/a2;

    .line 156
    .line 157
    move-object/from16 v27, v15

    .line 158
    .line 159
    new-instance v15, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 160
    .line 161
    invoke-direct {v15, v12, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const/4 v3, 0x7

    .line 165
    new-array v12, v3, [Ljava/util/Map$Entry;

    .line 166
    .line 167
    const/4 v3, 0x0

    .line 168
    aput-object v2, v12, v3

    .line 169
    .line 170
    const/4 v2, 0x1

    .line 171
    aput-object v4, v12, v2

    .line 172
    .line 173
    const/4 v2, 0x2

    .line 174
    aput-object v7, v12, v2

    .line 175
    .line 176
    const/4 v2, 0x3

    .line 177
    aput-object v5, v12, v2

    .line 178
    .line 179
    const/4 v2, 0x4

    .line 180
    aput-object v8, v12, v2

    .line 181
    .line 182
    const/4 v2, 0x5

    .line 183
    aput-object v1, v12, v2

    .line 184
    .line 185
    const/4 v1, 0x6

    .line 186
    aput-object v15, v12, v1

    .line 187
    .line 188
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    instance-of v2, v1, Ljava/util/Collection;

    .line 193
    .line 194
    if-eqz v2, :cond_0

    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    goto :goto_0

    .line 201
    :cond_0
    const/4 v2, 0x4

    .line 202
    :goto_0
    new-instance v3, Lp0/C;

    .line 203
    .line 204
    const/4 v4, 0x4

    .line 205
    invoke-direct {v3, v2, v4}, Lp0/C;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v1}, Lp0/C;->e(Ljava/util/Collection;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Lp0/C;->a()Lz4/i0;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    sget v2, Lz4/L;->I:I

    .line 216
    .line 217
    new-instance v2, Lz4/r0;

    .line 218
    .line 219
    const-string v3, "CH"

    .line 220
    .line 221
    invoke-direct {v2, v3}, Lz4/r0;-><init>(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    const/4 v3, 0x5

    .line 225
    new-array v4, v3, [C

    .line 226
    .line 227
    invoke-static {v14, v13}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-static {v14, v0}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-static {v14, v6}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    const-string v6, "IABTCF_PurposeOneTreatment"

    .line 240
    .line 241
    invoke-static {v14, v6}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    invoke-static {v14, v9}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const-string v8, "IABTCF_PublisherCC"

    .line 250
    .line 251
    invoke-static {v14, v8}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-static {}, Lz4/J;->a()Lp0/C;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    invoke-virtual {v1}, Lz4/J;->d()Lz4/L;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-virtual {v12}, Lz4/L;->t()Lcom/google/android/gms/internal/ads/gB;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    sget-object v15, Lcom/google/android/gms/internal/measurement/b2;->K:Lcom/google/android/gms/internal/measurement/b2;

    .line 272
    .line 273
    move-object/from16 v58, v2

    .line 274
    .line 275
    if-eqz v13, :cond_7

    .line 276
    .line 277
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    check-cast v13, Lcom/google/android/gms/internal/measurement/a2;

    .line 282
    .line 283
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    move-object/from16 v29, v12

    .line 288
    .line 289
    new-instance v12, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    move-object/from16 v59, v1

    .line 292
    .line 293
    const-string v1, "IABTCF_PublisherRestrictions"

    .line 294
    .line 295
    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-static {v14, v1}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-nez v2, :cond_6

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    const/16 v12, 0x2f3

    .line 320
    .line 321
    if-ge v2, v12, :cond_1

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_1
    const/16 v2, 0x2f2

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const/16 v2, 0xa

    .line 331
    .line 332
    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    sget-object v2, Lcom/google/android/gms/internal/measurement/b2;->H:Lcom/google/android/gms/internal/measurement/b2;

    .line 337
    .line 338
    if-ltz v1, :cond_5

    .line 339
    .line 340
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b2;->values()[Lcom/google/android/gms/internal/measurement/b2;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    array-length v12, v12

    .line 345
    if-le v1, v12, :cond_2

    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_2
    if-eqz v1, :cond_5

    .line 349
    .line 350
    const/4 v12, 0x1

    .line 351
    if-eq v1, v12, :cond_4

    .line 352
    .line 353
    const/4 v2, 0x2

    .line 354
    if-eq v1, v2, :cond_3

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_3
    sget-object v15, Lcom/google/android/gms/internal/measurement/b2;->J:Lcom/google/android/gms/internal/measurement/b2;

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_4
    sget-object v15, Lcom/google/android/gms/internal/measurement/b2;->I:Lcom/google/android/gms/internal/measurement/b2;

    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_5
    :goto_2
    move-object v15, v2

    .line 364
    :cond_6
    :goto_3
    invoke-virtual {v9, v13, v15}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    move-object/from16 v12, v29

    .line 368
    .line 369
    move-object/from16 v2, v58

    .line 370
    .line 371
    move-object/from16 v1, v59

    .line 372
    .line 373
    goto :goto_1

    .line 374
    :cond_7
    move-object/from16 v59, v1

    .line 375
    .line 376
    invoke-virtual {v9}, Lp0/C;->a()Lz4/i0;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-static {v14, v11}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-static {v14, v10}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v10

    .line 392
    const/16 v11, 0x31

    .line 393
    .line 394
    if-nez v10, :cond_8

    .line 395
    .line 396
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 397
    .line 398
    .line 399
    move-result v10

    .line 400
    const/16 v12, 0x2f3

    .line 401
    .line 402
    if-lt v10, v12, :cond_8

    .line 403
    .line 404
    const/16 v10, 0x2f2

    .line 405
    .line 406
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    if-ne v9, v11, :cond_8

    .line 411
    .line 412
    const/4 v9, 0x1

    .line 413
    goto :goto_4

    .line 414
    :cond_8
    const/4 v9, 0x0

    .line 415
    :goto_4
    const-string v10, "IABTCF_PurposeLegitimateInterests"

    .line 416
    .line 417
    invoke-static {v14, v10}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    const-string v12, "IABTCF_VendorLegitimateInterests"

    .line 422
    .line 423
    invoke-static {v14, v12}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v13

    .line 431
    if-nez v13, :cond_9

    .line 432
    .line 433
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    const/16 v14, 0x2f3

    .line 438
    .line 439
    if-lt v13, v14, :cond_9

    .line 440
    .line 441
    const/16 v13, 0x2f2

    .line 442
    .line 443
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    .line 444
    .line 445
    .line 446
    move-result v12

    .line 447
    if-ne v12, v11, :cond_9

    .line 448
    .line 449
    const/4 v11, 0x1

    .line 450
    goto :goto_5

    .line 451
    :cond_9
    const/4 v11, 0x0

    .line 452
    :goto_5
    const/16 v12, 0x32

    .line 453
    .line 454
    const/4 v13, 0x0

    .line 455
    aput-char v12, v4, v13

    .line 456
    .line 457
    new-instance v12, Lc4/l1;

    .line 458
    .line 459
    move-object/from16 v13, v27

    .line 460
    .line 461
    invoke-virtual {v1, v13}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v14

    .line 465
    check-cast v14, Lcom/google/android/gms/internal/measurement/b2;

    .line 466
    .line 467
    move-object/from16 v17, v12

    .line 468
    .line 469
    move-object/from16 v12, v40

    .line 470
    .line 471
    invoke-virtual {v1, v12}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v27

    .line 475
    check-cast v27, Lcom/google/android/gms/internal/measurement/b2;

    .line 476
    .line 477
    move-object/from16 v60, v4

    .line 478
    .line 479
    move-object/from16 v4, v56

    .line 480
    .line 481
    invoke-virtual {v1, v4}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v28

    .line 485
    check-cast v28, Lcom/google/android/gms/internal/measurement/b2;

    .line 486
    .line 487
    move-object/from16 v4, v57

    .line 488
    .line 489
    invoke-virtual {v1, v4}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v29

    .line 493
    check-cast v29, Lcom/google/android/gms/internal/measurement/b2;

    .line 494
    .line 495
    move-object/from16 v57, v1

    .line 496
    .line 497
    invoke-static {}, Lz4/J;->a()Lp0/C;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    move-object/from16 v61, v4

    .line 502
    .line 503
    const-string v4, "2"

    .line 504
    .line 505
    move-object/from16 v12, v55

    .line 506
    .line 507
    invoke-virtual {v1, v12, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    const/4 v4, 0x1

    .line 511
    if-eq v4, v9, :cond_a

    .line 512
    .line 513
    move-object/from16 v55, v12

    .line 514
    .line 515
    move-object/from16 v4, v18

    .line 516
    .line 517
    goto :goto_6

    .line 518
    :cond_a
    move-object/from16 v55, v12

    .line 519
    .line 520
    move-object/from16 v4, v19

    .line 521
    .line 522
    :goto_6
    const-string v12, "VendorConsent"

    .line 523
    .line 524
    invoke-virtual {v1, v12, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    const/4 v4, 0x1

    .line 528
    if-eq v4, v11, :cond_b

    .line 529
    .line 530
    move/from16 v62, v11

    .line 531
    .line 532
    move-object/from16 v12, v18

    .line 533
    .line 534
    goto :goto_7

    .line 535
    :cond_b
    move/from16 v62, v11

    .line 536
    .line 537
    move-object/from16 v12, v19

    .line 538
    .line 539
    :goto_7
    const-string v11, "VendorLegitimateInterest"

    .line 540
    .line 541
    invoke-virtual {v1, v11, v12}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    if-eq v5, v4, :cond_c

    .line 545
    .line 546
    move-object/from16 v11, v18

    .line 547
    .line 548
    :goto_8
    move-object/from16 v12, v26

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_c
    move-object/from16 v11, v19

    .line 552
    .line 553
    goto :goto_8

    .line 554
    :goto_9
    invoke-virtual {v1, v12, v11}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    if-eq v7, v4, :cond_d

    .line 558
    .line 559
    move-object/from16 v12, v18

    .line 560
    .line 561
    :goto_a
    move-object/from16 v11, v25

    .line 562
    .line 563
    goto :goto_b

    .line 564
    :cond_d
    move-object/from16 v12, v19

    .line 565
    .line 566
    goto :goto_a

    .line 567
    :goto_b
    invoke-virtual {v1, v11, v12}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v11

    .line 574
    move-object/from16 v12, v24

    .line 575
    .line 576
    invoke-virtual {v1, v12, v11}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v11

    .line 583
    move-object/from16 v12, v23

    .line 584
    .line 585
    invoke-virtual {v1, v12, v11}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    if-eq v6, v4, :cond_e

    .line 589
    .line 590
    move-object/from16 v4, v18

    .line 591
    .line 592
    goto :goto_c

    .line 593
    :cond_e
    move-object/from16 v4, v19

    .line 594
    .line 595
    :goto_c
    const-string v11, "PurposeOneTreatment"

    .line 596
    .line 597
    invoke-virtual {v1, v11, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    const-string v4, "PublisherCC"

    .line 601
    .line 602
    invoke-virtual {v1, v4, v8}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    if-eqz v14, :cond_f

    .line 606
    .line 607
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    goto :goto_d

    .line 612
    :cond_f
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    :goto_d
    const-string v11, "PublisherRestrictions1"

    .line 617
    .line 618
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    invoke-virtual {v1, v11, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    if-eqz v27, :cond_10

    .line 626
    .line 627
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    goto :goto_e

    .line 632
    :cond_10
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    :goto_e
    const-string v11, "PublisherRestrictions3"

    .line 637
    .line 638
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    invoke-virtual {v1, v11, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    if-eqz v28, :cond_11

    .line 646
    .line 647
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    goto :goto_f

    .line 652
    :cond_11
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    :goto_f
    const-string v11, "PublisherRestrictions4"

    .line 657
    .line 658
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    invoke-virtual {v1, v11, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    if-eqz v29, :cond_12

    .line 666
    .line 667
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    goto :goto_10

    .line 672
    :cond_12
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/b2;->zza()I

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    :goto_10
    const-string v11, "PublisherRestrictions7"

    .line 677
    .line 678
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    invoke-virtual {v1, v11, v4}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    invoke-static {v13, v2, v10}, Lc4/n1;->f(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    move-object/from16 v11, v40

    .line 690
    .line 691
    invoke-static {v11, v2, v10}, Lc4/n1;->f(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    move-object/from16 v14, v56

    .line 696
    .line 697
    invoke-static {v14, v2, v10}, Lc4/n1;->f(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v15

    .line 701
    move-object/from16 v14, v61

    .line 702
    .line 703
    invoke-static {v14, v2, v10}, Lc4/n1;->f(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v11

    .line 707
    const-string v14, "Purpose1"

    .line 708
    .line 709
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/ads/Cw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    move/from16 v63, v9

    .line 713
    .line 714
    const-string v9, "Purpose3"

    .line 715
    .line 716
    invoke-static {v9, v12}, Lcom/google/android/gms/internal/ads/Cw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    move-object/from16 v64, v10

    .line 720
    .line 721
    const-string v10, "Purpose4"

    .line 722
    .line 723
    invoke-static {v10, v15}, Lcom/google/android/gms/internal/ads/Cw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    move-object/from16 v65, v2

    .line 727
    .line 728
    const-string v2, "Purpose7"

    .line 729
    .line 730
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/ads/Cw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    move/from16 v67, v6

    .line 734
    .line 735
    move-object/from16 v66, v8

    .line 736
    .line 737
    const/16 v8, 0x8

    .line 738
    .line 739
    new-array v6, v8, [Ljava/lang/Object;

    .line 740
    .line 741
    const/4 v8, 0x0

    .line 742
    aput-object v14, v6, v8

    .line 743
    .line 744
    const/4 v8, 0x1

    .line 745
    aput-object v4, v6, v8

    .line 746
    .line 747
    const/4 v4, 0x2

    .line 748
    aput-object v9, v6, v4

    .line 749
    .line 750
    const/4 v4, 0x3

    .line 751
    aput-object v12, v6, v4

    .line 752
    .line 753
    const/4 v4, 0x4

    .line 754
    aput-object v10, v6, v4

    .line 755
    .line 756
    const/4 v8, 0x5

    .line 757
    aput-object v15, v6, v8

    .line 758
    .line 759
    const/4 v8, 0x6

    .line 760
    aput-object v2, v6, v8

    .line 761
    .line 762
    const/4 v2, 0x7

    .line 763
    aput-object v11, v6, v2

    .line 764
    .line 765
    const/4 v2, 0x0

    .line 766
    invoke-static {v4, v6, v2}, Lz4/i0;->e(I[Ljava/lang/Object;Lp0/C;)Lz4/i0;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    invoke-virtual {v6}, Lz4/J;->c()Lz4/L;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v1, v2}, Lp0/C;->e(Ljava/util/Collection;)V

    .line 775
    .line 776
    .line 777
    move-object/from16 v23, v13

    .line 778
    .line 779
    move-object/from16 v24, v59

    .line 780
    .line 781
    move-object/from16 v25, v57

    .line 782
    .line 783
    move-object/from16 v26, v58

    .line 784
    .line 785
    move-object/from16 v27, v60

    .line 786
    .line 787
    move/from16 v28, v3

    .line 788
    .line 789
    move/from16 v29, v7

    .line 790
    .line 791
    move/from16 v30, v5

    .line 792
    .line 793
    move/from16 v31, v0

    .line 794
    .line 795
    move/from16 v32, v67

    .line 796
    .line 797
    move-object/from16 v33, v66

    .line 798
    .line 799
    move-object/from16 v34, v65

    .line 800
    .line 801
    move-object/from16 v35, v64

    .line 802
    .line 803
    move/from16 v36, v63

    .line 804
    .line 805
    move/from16 v37, v62

    .line 806
    .line 807
    invoke-static/range {v23 .. v37}, Lc4/n1;->c(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;Lz4/i0;Lz4/r0;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    const/4 v4, 0x1

    .line 812
    if-eq v4, v2, :cond_13

    .line 813
    .line 814
    move-object/from16 v2, v18

    .line 815
    .line 816
    goto :goto_11

    .line 817
    :cond_13
    move-object/from16 v2, v19

    .line 818
    .line 819
    :goto_11
    move-object/from16 v41, v59

    .line 820
    .line 821
    move-object/from16 v42, v57

    .line 822
    .line 823
    move-object/from16 v43, v58

    .line 824
    .line 825
    move-object/from16 v44, v60

    .line 826
    .line 827
    move/from16 v45, v3

    .line 828
    .line 829
    move/from16 v46, v7

    .line 830
    .line 831
    move/from16 v47, v5

    .line 832
    .line 833
    move/from16 v48, v0

    .line 834
    .line 835
    move/from16 v49, v67

    .line 836
    .line 837
    move-object/from16 v50, v66

    .line 838
    .line 839
    move-object/from16 v51, v65

    .line 840
    .line 841
    move-object/from16 v52, v64

    .line 842
    .line 843
    move/from16 v53, v63

    .line 844
    .line 845
    move/from16 v54, v62

    .line 846
    .line 847
    invoke-static/range {v40 .. v54}, Lc4/n1;->c(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;Lz4/i0;Lz4/r0;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 848
    .line 849
    .line 850
    move-result v4

    .line 851
    const/4 v6, 0x1

    .line 852
    if-eq v6, v4, :cond_14

    .line 853
    .line 854
    move-object/from16 v4, v18

    .line 855
    .line 856
    goto :goto_12

    .line 857
    :cond_14
    move-object/from16 v4, v19

    .line 858
    .line 859
    :goto_12
    move-object/from16 v40, v56

    .line 860
    .line 861
    move-object/from16 v41, v59

    .line 862
    .line 863
    move-object/from16 v42, v57

    .line 864
    .line 865
    move-object/from16 v43, v58

    .line 866
    .line 867
    move-object/from16 v44, v60

    .line 868
    .line 869
    move/from16 v45, v3

    .line 870
    .line 871
    move/from16 v46, v7

    .line 872
    .line 873
    move/from16 v47, v5

    .line 874
    .line 875
    move/from16 v48, v0

    .line 876
    .line 877
    move/from16 v49, v67

    .line 878
    .line 879
    move-object/from16 v50, v66

    .line 880
    .line 881
    move-object/from16 v51, v65

    .line 882
    .line 883
    move-object/from16 v52, v64

    .line 884
    .line 885
    move/from16 v53, v63

    .line 886
    .line 887
    move/from16 v54, v62

    .line 888
    .line 889
    invoke-static/range {v40 .. v54}, Lc4/n1;->c(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;Lz4/i0;Lz4/r0;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 890
    .line 891
    .line 892
    move-result v6

    .line 893
    const/4 v8, 0x1

    .line 894
    if-eq v8, v6, :cond_15

    .line 895
    .line 896
    move-object/from16 v6, v18

    .line 897
    .line 898
    goto :goto_13

    .line 899
    :cond_15
    move-object/from16 v6, v19

    .line 900
    .line 901
    :goto_13
    move-object/from16 v40, v61

    .line 902
    .line 903
    move-object/from16 v41, v59

    .line 904
    .line 905
    move-object/from16 v42, v57

    .line 906
    .line 907
    move-object/from16 v43, v58

    .line 908
    .line 909
    move-object/from16 v44, v60

    .line 910
    .line 911
    move/from16 v45, v3

    .line 912
    .line 913
    move/from16 v46, v7

    .line 914
    .line 915
    move/from16 v47, v5

    .line 916
    .line 917
    move/from16 v48, v0

    .line 918
    .line 919
    move/from16 v49, v67

    .line 920
    .line 921
    move-object/from16 v50, v66

    .line 922
    .line 923
    move-object/from16 v51, v65

    .line 924
    .line 925
    move-object/from16 v52, v64

    .line 926
    .line 927
    move/from16 v53, v63

    .line 928
    .line 929
    move/from16 v54, v62

    .line 930
    .line 931
    invoke-static/range {v40 .. v54}, Lc4/n1;->c(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;Lz4/i0;Lz4/r0;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    const/4 v3, 0x1

    .line 936
    if-eq v3, v0, :cond_16

    .line 937
    .line 938
    move-object/from16 v0, v18

    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_16
    move-object/from16 v0, v19

    .line 942
    .line 943
    :goto_14
    new-instance v5, Ljava/lang/String;

    .line 944
    .line 945
    move-object/from16 v7, v60

    .line 946
    .line 947
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([C)V

    .line 948
    .line 949
    .line 950
    const/16 v7, 0xa

    .line 951
    .line 952
    new-array v7, v7, [Ljava/lang/Object;

    .line 953
    .line 954
    const-string v8, "AuthorizePurpose1"

    .line 955
    .line 956
    const/4 v9, 0x0

    .line 957
    aput-object v8, v7, v9

    .line 958
    .line 959
    aput-object v2, v7, v3

    .line 960
    .line 961
    const-string v2, "AuthorizePurpose3"

    .line 962
    .line 963
    const/4 v3, 0x2

    .line 964
    aput-object v2, v7, v3

    .line 965
    .line 966
    const/4 v2, 0x3

    .line 967
    aput-object v4, v7, v2

    .line 968
    .line 969
    const-string v2, "AuthorizePurpose4"

    .line 970
    .line 971
    const/4 v3, 0x4

    .line 972
    aput-object v2, v7, v3

    .line 973
    .line 974
    const/4 v2, 0x5

    .line 975
    aput-object v6, v7, v2

    .line 976
    .line 977
    const-string v3, "AuthorizePurpose7"

    .line 978
    .line 979
    const/4 v4, 0x6

    .line 980
    aput-object v3, v7, v4

    .line 981
    .line 982
    const/4 v3, 0x7

    .line 983
    aput-object v0, v7, v3

    .line 984
    .line 985
    const/16 v0, 0x8

    .line 986
    .line 987
    aput-object v39, v7, v0

    .line 988
    .line 989
    const/16 v0, 0x9

    .line 990
    .line 991
    aput-object v5, v7, v0

    .line 992
    .line 993
    const/4 v0, 0x0

    .line 994
    invoke-static {v2, v7, v0}, Lz4/i0;->e(I[Ljava/lang/Object;Lp0/C;)Lz4/i0;

    .line 995
    .line 996
    .line 997
    move-result-object v2

    .line 998
    invoke-virtual {v2}, Lz4/J;->c()Lz4/L;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {v1, v0}, Lp0/C;->e(Ljava/util/Collection;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v1}, Lp0/C;->a()Lz4/i0;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    move-object/from16 v1, v17

    .line 1010
    .line 1011
    invoke-direct {v1, v0}, Lc4/l1;-><init>(Ljava/util/Map;)V

    .line 1012
    .line 1013
    .line 1014
    move-object v12, v1

    .line 1015
    move-object/from16 v0, v22

    .line 1016
    .line 1017
    move-object/from16 v5, v38

    .line 1018
    .line 1019
    goto/16 :goto_15

    .line 1020
    .line 1021
    :cond_17
    move-object/from16 v39, v1

    .line 1022
    .line 1023
    move-object/from16 v38, v2

    .line 1024
    .line 1025
    move-object v1, v3

    .line 1026
    move-object v2, v4

    .line 1027
    move-object/from16 v55, v5

    .line 1028
    .line 1029
    move-object v3, v7

    .line 1030
    move-object v12, v8

    .line 1031
    invoke-static {v14, v10}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    move-object/from16 v5, v38

    .line 1036
    .line 1037
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v7

    .line 1041
    if-nez v7, :cond_18

    .line 1042
    .line 1043
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1044
    .line 1045
    .line 1046
    move-result v7

    .line 1047
    const/16 v8, 0x2f2

    .line 1048
    .line 1049
    if-le v7, v8, :cond_18

    .line 1050
    .line 1051
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    .line 1052
    .line 1053
    .line 1054
    move-result v4

    .line 1055
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v4

    .line 1059
    const-string v7, "GoogleConsent"

    .line 1060
    .line 1061
    invoke-virtual {v15, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    :cond_18
    invoke-static {v14, v6}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 1065
    .line 1066
    .line 1067
    move-result v4

    .line 1068
    const/4 v6, -0x1

    .line 1069
    if-eq v4, v6, :cond_19

    .line 1070
    .line 1071
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    invoke-virtual {v15, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    :cond_19
    invoke-static {v14, v9}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v4

    .line 1082
    if-eq v4, v6, :cond_1a

    .line 1083
    .line 1084
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v4

    .line 1088
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    :cond_1a
    invoke-static {v14, v0}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 1092
    .line 1093
    .line 1094
    move-result v0

    .line 1095
    if-eq v0, v6, :cond_1b

    .line 1096
    .line 1097
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    :cond_1b
    invoke-static {v14, v11}, Lc4/n1;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v2

    .line 1112
    if-nez v2, :cond_1c

    .line 1113
    .line 1114
    const-string v2, "PurposeConsents"

    .line 1115
    .line 1116
    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    :cond_1c
    invoke-static {v14, v13}, Lc4/n1;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    if-eq v0, v6, :cond_1d

    .line 1124
    .line 1125
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    invoke-virtual {v15, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    :cond_1d
    new-instance v12, Lc4/l1;

    .line 1133
    .line 1134
    invoke-direct {v12, v15}, Lc4/l1;-><init>(Ljava/util/Map;)V

    .line 1135
    .line 1136
    .line 1137
    move-object/from16 v0, v22

    .line 1138
    .line 1139
    :goto_15
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 1140
    .line 1141
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 1142
    .line 1143
    .line 1144
    const-string v2, "Tcf preferences read"

    .line 1145
    .line 1146
    iget-object v3, v1, Lc4/T;->T:Lc4/Q;

    .line 1147
    .line 1148
    invoke-virtual {v3, v12, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v2, v0, Lc4/l0;->M:Lc4/h;

    .line 1152
    .line 1153
    move-object/from16 v4, v21

    .line 1154
    .line 1155
    const/4 v6, 0x0

    .line 1156
    invoke-virtual {v2, v6, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v2

    .line 1160
    const-string v4, "_tcf"

    .line 1161
    .line 1162
    const-string v6, "auto"

    .line 1163
    .line 1164
    const-string v7, "_tcfd"

    .line 1165
    .line 1166
    const/16 v8, -0x1e

    .line 1167
    .line 1168
    const-string v9, "Consent generated from Tcf"

    .line 1169
    .line 1170
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 1171
    .line 1172
    if-eqz v2, :cond_2a

    .line 1173
    .line 1174
    invoke-virtual/range {v20 .. v20}, Lc1/d;->m()V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual/range {v20 .. v20}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    const-string v10, "stored_tcf_param"

    .line 1182
    .line 1183
    invoke-interface {v2, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v2

    .line 1187
    new-instance v5, Ljava/util/HashMap;

    .line 1188
    .line 1189
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .line 1191
    .line 1192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v10

    .line 1196
    if-eqz v10, :cond_1e

    .line 1197
    .line 1198
    new-instance v2, Lc4/l1;

    .line 1199
    .line 1200
    invoke-direct {v2, v5}, Lc4/l1;-><init>(Ljava/util/Map;)V

    .line 1201
    .line 1202
    .line 1203
    :goto_16
    move-object/from16 v5, v20

    .line 1204
    .line 1205
    goto :goto_19

    .line 1206
    :cond_1e
    const-string v10, ";"

    .line 1207
    .line 1208
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    array-length v10, v2

    .line 1213
    const/4 v11, 0x0

    .line 1214
    :goto_17
    if-ge v11, v10, :cond_21

    .line 1215
    .line 1216
    aget-object v13, v2, v11

    .line 1217
    .line 1218
    const-string v14, "="

    .line 1219
    .line 1220
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v13

    .line 1224
    array-length v14, v13

    .line 1225
    const/4 v15, 0x2

    .line 1226
    if-lt v14, v15, :cond_20

    .line 1227
    .line 1228
    sget-object v14, Lc4/n1;->a:Lz4/d0;

    .line 1229
    .line 1230
    const/16 v16, 0x0

    .line 1231
    .line 1232
    aget-object v15, v13, v16

    .line 1233
    .line 1234
    invoke-virtual {v14, v15}, Lz4/H;->contains(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v14

    .line 1238
    if-eqz v14, :cond_1f

    .line 1239
    .line 1240
    aget-object v14, v13, v16

    .line 1241
    .line 1242
    const/4 v15, 0x1

    .line 1243
    aget-object v13, v13, v15

    .line 1244
    .line 1245
    invoke-virtual {v5, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    goto :goto_18

    .line 1249
    :cond_1f
    const/4 v15, 0x1

    .line 1250
    goto :goto_18

    .line 1251
    :cond_20
    const/4 v15, 0x1

    .line 1252
    const/16 v16, 0x0

    .line 1253
    .line 1254
    :goto_18
    add-int/2addr v11, v15

    .line 1255
    goto :goto_17

    .line 1256
    :cond_21
    new-instance v2, Lc4/l1;

    .line 1257
    .line 1258
    invoke-direct {v2, v5}, Lc4/l1;-><init>(Ljava/util/Map;)V

    .line 1259
    .line 1260
    .line 1261
    goto :goto_16

    .line 1262
    :goto_19
    invoke-virtual {v5, v12}, Lc4/Z;->y(Lc4/l1;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v5

    .line 1266
    if-eqz v5, :cond_29

    .line 1267
    .line 1268
    invoke-virtual {v12}, Lc4/l1;->a()Landroid/os/Bundle;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v5

    .line 1272
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v3, v5, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1279
    .line 1280
    if-eq v5, v1, :cond_22

    .line 1281
    .line 1282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1283
    .line 1284
    .line 1285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1286
    .line 1287
    .line 1288
    move-result-wide v0

    .line 1289
    move-object/from16 v10, p0

    .line 1290
    .line 1291
    invoke-virtual {v10, v5, v8, v0, v1}, Lc4/K0;->D(Landroid/os/Bundle;IJ)V

    .line 1292
    .line 1293
    .line 1294
    goto :goto_1a

    .line 1295
    :cond_22
    move-object/from16 v10, p0

    .line 1296
    .line 1297
    :goto_1a
    new-instance v0, Landroid/os/Bundle;

    .line 1298
    .line 1299
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1300
    .line 1301
    .line 1302
    iget-object v1, v2, Lc4/l1;->a:Ljava/util/HashMap;

    .line 1303
    .line 1304
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 1305
    .line 1306
    .line 1307
    move-result v3

    .line 1308
    if-nez v3, :cond_23

    .line 1309
    .line 1310
    move-object/from16 v3, v55

    .line 1311
    .line 1312
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v1

    .line 1316
    check-cast v1, Ljava/lang/String;

    .line 1317
    .line 1318
    if-nez v1, :cond_23

    .line 1319
    .line 1320
    move-object/from16 v1, v19

    .line 1321
    .line 1322
    goto :goto_1b

    .line 1323
    :cond_23
    move-object/from16 v1, v18

    .line 1324
    .line 1325
    :goto_1b
    invoke-virtual {v12}, Lc4/l1;->a()Landroid/os/Bundle;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v3

    .line 1329
    invoke-virtual {v2}, Lc4/l1;->a()Landroid/os/Bundle;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    invoke-virtual {v3}, Landroid/os/BaseBundle;->size()I

    .line 1334
    .line 1335
    .line 1336
    move-result v5

    .line 1337
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 1338
    .line 1339
    .line 1340
    move-result v8

    .line 1341
    if-eq v5, v8, :cond_24

    .line 1342
    .line 1343
    goto :goto_1c

    .line 1344
    :cond_24
    const-string v5, "ad_storage"

    .line 1345
    .line 1346
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v8

    .line 1350
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v5

    .line 1354
    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v5

    .line 1358
    if-nez v5, :cond_25

    .line 1359
    .line 1360
    goto :goto_1c

    .line 1361
    :cond_25
    const-string v5, "ad_personalization"

    .line 1362
    .line 1363
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v8

    .line 1367
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v5

    .line 1371
    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1372
    .line 1373
    .line 1374
    move-result v5

    .line 1375
    if-nez v5, :cond_26

    .line 1376
    .line 1377
    goto :goto_1c

    .line 1378
    :cond_26
    const-string v5, "ad_user_data"

    .line 1379
    .line 1380
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v3

    .line 1384
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v2

    .line 1392
    if-nez v2, :cond_27

    .line 1393
    .line 1394
    :goto_1c
    move-object/from16 v2, v19

    .line 1395
    .line 1396
    goto :goto_1d

    .line 1397
    :cond_27
    move-object/from16 v2, v18

    .line 1398
    .line 1399
    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v1

    .line 1403
    const-string v2, "_tcfm"

    .line 1404
    .line 1405
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    iget-object v1, v12, Lc4/l1;->a:Ljava/util/HashMap;

    .line 1409
    .line 1410
    move-object/from16 v2, v39

    .line 1411
    .line 1412
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v1

    .line 1416
    check-cast v1, Ljava/lang/String;

    .line 1417
    .line 1418
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v2

    .line 1422
    if-eqz v2, :cond_28

    .line 1423
    .line 1424
    const-string v1, "200000"

    .line 1425
    .line 1426
    :cond_28
    const-string v2, "_tcfd2"

    .line 1427
    .line 1428
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v12}, Lc4/l1;->b()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v1

    .line 1435
    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v10, v6, v4, v0}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1439
    .line 1440
    .line 1441
    return-void

    .line 1442
    :cond_29
    move-object/from16 v10, p0

    .line 1443
    .line 1444
    goto :goto_1e

    .line 1445
    :cond_2a
    move-object/from16 v10, p0

    .line 1446
    .line 1447
    move-object/from16 v5, v20

    .line 1448
    .line 1449
    invoke-virtual {v5, v12}, Lc4/Z;->y(Lc4/l1;)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v2

    .line 1453
    if-eqz v2, :cond_2c

    .line 1454
    .line 1455
    invoke-virtual {v12}, Lc4/l1;->a()Landroid/os/Bundle;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v2

    .line 1459
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v3, v2, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1466
    .line 1467
    if-eq v2, v1, :cond_2b

    .line 1468
    .line 1469
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    .line 1471
    .line 1472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1473
    .line 1474
    .line 1475
    move-result-wide v0

    .line 1476
    invoke-virtual {v10, v2, v8, v0, v1}, Lc4/K0;->D(Landroid/os/Bundle;IJ)V

    .line 1477
    .line 1478
    .line 1479
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    .line 1480
    .line 1481
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v12}, Lc4/l1;->b()Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v1

    .line 1488
    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v10, v6, v4, v0}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1492
    .line 1493
    .line 1494
    :cond_2c
    :goto_1e
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 20

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object v3, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v3, p3

    .line 13
    .line 14
    :goto_0
    const-string v0, "screen_view"

    .line 15
    .line 16
    move-object/from16 v4, p2

    .line 17
    .line 18
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_c

    .line 24
    .line 25
    iget-object v0, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lc4/l0;

    .line 28
    .line 29
    iget-object v2, v0, Lc4/l0;->U:Lc4/V0;

    .line 30
    .line 31
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, v2, Lc4/V0;->R:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v5

    .line 37
    :try_start_0
    iget-boolean v0, v2, Lc4/V0;->Q:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lc4/l0;

    .line 44
    .line 45
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 46
    .line 47
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 51
    .line 52
    const-string v1, "Cannot log screen view event when the app is in the background."

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v5

    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :cond_1
    const-string v0, "screen_name"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz v13, :cond_3

    .line 71
    .line 72
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-lez v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-object v6, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v6, Lc4/l0;

    .line 85
    .line 86
    iget-object v6, v6, Lc4/l0;->M:Lc4/h;

    .line 87
    .line 88
    invoke-virtual {v6, v0, v1}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-le v4, v6, :cond_3

    .line 93
    .line 94
    :cond_2
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lc4/l0;

    .line 97
    .line 98
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 99
    .line 100
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 104
    .line 105
    const-string v1, "Invalid screen name length for screen view. Length"

    .line 106
    .line 107
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0, v2, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    monitor-exit v5

    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_3
    const-string v4, "screen_class"

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-lez v6, :cond_4

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    iget-object v7, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v7, Lc4/l0;

    .line 142
    .line 143
    iget-object v7, v7, Lc4/l0;->M:Lc4/h;

    .line 144
    .line 145
    invoke-virtual {v7, v0, v1}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-le v6, v0, :cond_5

    .line 150
    .line 151
    :cond_4
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lc4/l0;

    .line 154
    .line 155
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 156
    .line 157
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 161
    .line 162
    const-string v1, "Invalid screen class length for screen view. Length"

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    monitor-exit v5

    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_5
    if-nez v4, :cond_7

    .line 179
    .line 180
    iget-object v0, v2, Lc4/V0;->M:Lcom/google/android/gms/internal/measurement/W;

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/W;->H:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v0}, Lc4/V0;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_1
    move-object v14, v0

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    const-string v0, "Activity"

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    move-object v14, v4

    .line 196
    :goto_2
    iget-object v0, v2, Lc4/V0;->I:Lc4/S0;

    .line 197
    .line 198
    iget-boolean v4, v2, Lc4/V0;->N:Z

    .line 199
    .line 200
    if-eqz v4, :cond_8

    .line 201
    .line 202
    if-eqz v0, :cond_8

    .line 203
    .line 204
    iput-boolean v1, v2, Lc4/V0;->N:Z

    .line 205
    .line 206
    iget-object v1, v0, Lc4/S0;->b:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v1, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iget-object v0, v0, Lc4/S0;->a:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v0, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    if-eqz v0, :cond_8

    .line 221
    .line 222
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Lc4/l0;

    .line 225
    .line 226
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 227
    .line 228
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 232
    .line 233
    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    monitor-exit v5

    .line 239
    goto :goto_7

    .line 240
    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lc4/l0;

    .line 244
    .line 245
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 246
    .line 247
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 251
    .line 252
    if-nez v13, :cond_9

    .line 253
    .line 254
    const-string v4, "null"

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_9
    move-object v4, v13

    .line 258
    :goto_3
    if-nez v14, :cond_a

    .line 259
    .line 260
    const-string v5, "null"

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_a
    move-object v5, v14

    .line 264
    :goto_4
    const-string v6, "Logging screen view with name, class"

    .line 265
    .line 266
    invoke-virtual {v1, v4, v5, v6}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v2, Lc4/V0;->I:Lc4/S0;

    .line 270
    .line 271
    if-nez v1, :cond_b

    .line 272
    .line 273
    iget-object v1, v2, Lc4/V0;->J:Lc4/S0;

    .line 274
    .line 275
    :goto_5
    move-object v5, v1

    .line 276
    goto :goto_6

    .line 277
    :cond_b
    iget-object v1, v2, Lc4/V0;->I:Lc4/S0;

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :goto_6
    new-instance v4, Lc4/S0;

    .line 281
    .line 282
    iget-object v1, v0, Lc4/l0;->R:Lc4/I1;

    .line 283
    .line 284
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Lc4/I1;->y0()J

    .line 288
    .line 289
    .line 290
    move-result-wide v15

    .line 291
    const/16 v17, 0x1

    .line 292
    .line 293
    move-object v12, v4

    .line 294
    move-wide/from16 v18, p6

    .line 295
    .line 296
    invoke-direct/range {v12 .. v19}, Lc4/S0;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 297
    .line 298
    .line 299
    iput-object v4, v2, Lc4/V0;->I:Lc4/S0;

    .line 300
    .line 301
    iput-object v5, v2, Lc4/V0;->J:Lc4/S0;

    .line 302
    .line 303
    iput-object v4, v2, Lc4/V0;->O:Lc4/S0;

    .line 304
    .line 305
    iget-object v1, v0, Lc4/l0;->T:LP3/b;

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 311
    .line 312
    .line 313
    move-result-wide v6

    .line 314
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 315
    .line 316
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 317
    .line 318
    .line 319
    new-instance v9, Lc4/n0;

    .line 320
    .line 321
    const/4 v8, 0x2

    .line 322
    move-object v1, v9

    .line 323
    invoke-direct/range {v1 .. v8}, Lc4/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v9}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 327
    .line 328
    .line 329
    :goto_7
    return-void

    .line 330
    :goto_8
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    throw v0

    .line 332
    :cond_c
    const/4 v0, 0x1

    .line 333
    if-eqz p5, :cond_d

    .line 334
    .line 335
    iget-object v2, v11, Lc4/K0;->J:Lm2/l;

    .line 336
    .line 337
    if-eqz v2, :cond_d

    .line 338
    .line 339
    invoke-static/range {p2 .. p2}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-eqz v2, :cond_e

    .line 344
    .line 345
    :cond_d
    const/4 v9, 0x1

    .line 346
    goto :goto_9

    .line 347
    :cond_e
    const/4 v9, 0x0

    .line 348
    :goto_9
    if-nez p1, :cond_f

    .line 349
    .line 350
    const-string v0, "app"

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_f
    move-object/from16 v0, p1

    .line 354
    .line 355
    :goto_a
    new-instance v7, Landroid/os/Bundle;

    .line 356
    .line 357
    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    :cond_10
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_15

    .line 373
    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v7, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    instance-of v6, v5, Landroid/os/Bundle;

    .line 385
    .line 386
    if-eqz v6, :cond_11

    .line 387
    .line 388
    new-instance v6, Landroid/os/Bundle;

    .line 389
    .line 390
    check-cast v5, Landroid/os/Bundle;

    .line 391
    .line 392
    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v7, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 396
    .line 397
    .line 398
    goto :goto_b

    .line 399
    :cond_11
    instance-of v3, v5, [Landroid/os/Parcelable;

    .line 400
    .line 401
    if-eqz v3, :cond_13

    .line 402
    .line 403
    check-cast v5, [Landroid/os/Parcelable;

    .line 404
    .line 405
    const/4 v3, 0x0

    .line 406
    :goto_c
    array-length v6, v5

    .line 407
    if-ge v3, v6, :cond_10

    .line 408
    .line 409
    aget-object v6, v5, v3

    .line 410
    .line 411
    instance-of v8, v6, Landroid/os/Bundle;

    .line 412
    .line 413
    if-eqz v8, :cond_12

    .line 414
    .line 415
    new-instance v8, Landroid/os/Bundle;

    .line 416
    .line 417
    check-cast v6, Landroid/os/Bundle;

    .line 418
    .line 419
    invoke-direct {v8, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 420
    .line 421
    .line 422
    aput-object v8, v5, v3

    .line 423
    .line 424
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_13
    instance-of v3, v5, Ljava/util/List;

    .line 428
    .line 429
    if-eqz v3, :cond_10

    .line 430
    .line 431
    check-cast v5, Ljava/util/List;

    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    if-ge v3, v6, :cond_10

    .line 439
    .line 440
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    instance-of v8, v6, Landroid/os/Bundle;

    .line 445
    .line 446
    if-eqz v8, :cond_14

    .line 447
    .line 448
    new-instance v8, Landroid/os/Bundle;

    .line 449
    .line 450
    check-cast v6, Landroid/os/Bundle;

    .line 451
    .line 452
    invoke-direct {v8, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 453
    .line 454
    .line 455
    invoke-interface {v5, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 459
    .line 460
    goto :goto_d

    .line 461
    :cond_15
    iget-object v1, v11, Lc1/d;->G:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v1, Lc4/l0;

    .line 464
    .line 465
    iget-object v12, v1, Lc4/l0;->P:Lc4/j0;

    .line 466
    .line 467
    invoke-static {v12}, Lc4/l0;->k(Lc4/s0;)V

    .line 468
    .line 469
    .line 470
    new-instance v13, Lc4/H0;

    .line 471
    .line 472
    move-object v1, v13

    .line 473
    move-object/from16 v2, p0

    .line 474
    .line 475
    move-object v3, v0

    .line 476
    move-object/from16 v4, p2

    .line 477
    .line 478
    move-wide/from16 v5, p6

    .line 479
    .line 480
    move/from16 v8, p5

    .line 481
    .line 482
    move/from16 v10, p4

    .line 483
    .line 484
    invoke-direct/range {v1 .. v10}, Lc4/H0;-><init>(Lc4/K0;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v12, v13}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 488
    .line 489
    .line 490
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    move-object v1, p0

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p1

    .line 20
    move-object v6, p2

    .line 21
    invoke-virtual/range {v1 .. v6}, Lc4/K0;->z(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final z(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    move-object v10, p0

    .line 5
    iget-object v0, v10, Lc4/K0;->J:Lm2/l;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static/range {p5 .. p5}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v7, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    :goto_0
    const/4 v9, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v8, 0x1

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p4

    .line 25
    move-object/from16 v2, p5

    .line 26
    .line 27
    move-wide v3, p1

    .line 28
    move-object v5, p3

    .line 29
    invoke-virtual/range {v0 .. v9}, Lc4/K0;->A(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

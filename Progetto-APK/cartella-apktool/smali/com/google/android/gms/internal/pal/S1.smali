.class public final Lcom/google/android/gms/internal/pal/S1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;I)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/pal/S1;->h:I

    .line 1
    const-string v3, "tPxcLkiesd8JzrYIyuRbLGxWAQfsX+C1jrJaS2rsRu6lU/ve1b9hEzSSzo6VwqXx"

    const-string v4, "0RWQk7vrKrAXtxwBYq7T9nI/JnUnK0yiZtx30+mk7/g="

    const/16 v7, 0x1f

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;ILandroid/view/View;)V
    .locals 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/pal/S1;->h:I

    .line 2
    const-string v3, "xcWDoPM3ZfO4P10VSUmZKRTMvsXPXnglJL31bwAJBgJGdSUy2IQG17s4MILOncV2"

    const-string v4, "9rXsTdb/WXYONX554dN5CJ2eqpcy9gFPMPi8uAjaHTA="

    const/16 v7, 0x39

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;I[Ljava/lang/StackTraceElement;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/pal/S1;->h:I

    .line 3
    const-string v3, "d2tnKFzXPwiZyQGi+81r0jKuUmc/wF2bs8mf3rZLUgisIeswnimQDm/skPYjpEo4"

    const-string v4, "e/DvqiTz4SkFtBEBn/3V8Pr2h2slHO4xuLOBAItCJ4w="

    const/16 v7, 0x2d

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 4
    .line 5
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 13
    .line 14
    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/pal/m0;

    .line 17
    .line 18
    const-wide/16 v3, -0x1

    .line 19
    .line 20
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/pal/m0;->v0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 24
    .line 25
    iget-boolean v5, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 33
    .line 34
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 35
    .line 36
    check-cast v2, Lcom/google/android/gms/internal/pal/m0;

    .line 37
    .line 38
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/pal/m0;->w0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/util/List;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 52
    .line 53
    new-array v4, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v3, v4, v1

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/util/List;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Ljava/util/List;

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v3, 0x2

    .line 77
    if-ne v2, v3, :cond_5

    .line 78
    .line 79
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 80
    .line 81
    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v4, Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    iget-boolean v6, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 99
    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 103
    .line 104
    .line 105
    iput-boolean v1, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 106
    .line 107
    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 108
    .line 109
    check-cast v3, Lcom/google/android/gms/internal/pal/m0;

    .line 110
    .line 111
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/pal/m0;->v0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    iget-boolean v0, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 135
    .line 136
    .line 137
    iput-boolean v1, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 138
    .line 139
    :cond_4
    iget-object v0, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 140
    .line 141
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 142
    .line 143
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/pal/m0;->w0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 144
    .line 145
    .line 146
    monitor-exit v2

    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw v0

    .line 151
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/pal/S1;->h:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/view/View;

    .line 15
    .line 16
    if-eqz v1, :cond_9

    .line 17
    .line 18
    sget-object v1, Lcom/google/android/gms/internal/pal/l2;->u:LO1/y;

    .line 19
    .line 20
    sget-object v7, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 21
    .line 22
    iget-object v8, v7, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 23
    .line 24
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    sget-object v8, Lcom/google/android/gms/internal/pal/l2;->w:LO1/y;

    .line 31
    .line 32
    iget-object v7, v7, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 33
    .line 34
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Ljava/lang/Boolean;

    .line 39
    .line 40
    iget-object v8, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 41
    .line 42
    iget-object v8, v8, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-object v9, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 53
    .line 54
    iget-object v10, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Landroid/view/View;

    .line 57
    .line 58
    new-array v11, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v10, v11, v5

    .line 61
    .line 62
    aput-object v8, v11, v4

    .line 63
    .line 64
    aput-object v1, v11, v3

    .line 65
    .line 66
    aput-object v7, v11, v2

    .line 67
    .line 68
    invoke-virtual {v9, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/lang/String;

    .line 73
    .line 74
    new-instance v8, Lcom/google/android/gms/internal/pal/D1;

    .line 75
    .line 76
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/c1;->a(Ljava/lang/String;)Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_0

    .line 84
    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    check-cast v9, Ljava/lang/Long;

    .line 94
    .line 95
    iput-object v9, v8, Lcom/google/android/gms/internal/pal/D1;->a:Ljava/lang/Long;

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Ljava/lang/Long;

    .line 106
    .line 107
    iput-object v4, v8, Lcom/google/android/gms/internal/pal/D1;->b:Ljava/lang/Long;

    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/Long;

    .line 118
    .line 119
    iput-object v3, v8, Lcom/google/android/gms/internal/pal/D1;->c:Ljava/lang/Long;

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/Long;

    .line 130
    .line 131
    iput-object v2, v8, Lcom/google/android/gms/internal/pal/D1;->d:Ljava/lang/Long;

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Long;

    .line 142
    .line 143
    iput-object v0, v8, Lcom/google/android/gms/internal/pal/D1;->e:Ljava/lang/Long;

    .line 144
    .line 145
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/X;->m()Lcom/google/android/gms/internal/pal/E;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v2, v8, Lcom/google/android/gms/internal/pal/D1;->a:Ljava/lang/Long;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    iget-boolean v4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 156
    .line 157
    if-eqz v4, :cond_1

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 160
    .line 161
    .line 162
    iput-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 163
    .line 164
    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 165
    .line 166
    check-cast v4, Lcom/google/android/gms/internal/pal/X;

    .line 167
    .line 168
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/pal/X;->o(Lcom/google/android/gms/internal/pal/X;J)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v8, Lcom/google/android/gms/internal/pal/D1;->b:Ljava/lang/Long;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    iget-boolean v4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 178
    .line 179
    if-eqz v4, :cond_2

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 182
    .line 183
    .line 184
    iput-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 185
    .line 186
    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 187
    .line 188
    check-cast v4, Lcom/google/android/gms/internal/pal/X;

    .line 189
    .line 190
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/pal/X;->p(Lcom/google/android/gms/internal/pal/X;J)V

    .line 191
    .line 192
    .line 193
    iget-object v2, v8, Lcom/google/android/gms/internal/pal/D1;->c:Ljava/lang/Long;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    iget-boolean v4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 200
    .line 201
    if-eqz v4, :cond_3

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 204
    .line 205
    .line 206
    iput-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 207
    .line 208
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 209
    .line 210
    check-cast v4, Lcom/google/android/gms/internal/pal/X;

    .line 211
    .line 212
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/pal/X;->q(Lcom/google/android/gms/internal/pal/X;J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_5

    .line 220
    .line 221
    iget-object v2, v8, Lcom/google/android/gms/internal/pal/D1;->e:Ljava/lang/Long;

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v2

    .line 227
    iget-boolean v4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 228
    .line 229
    if-eqz v4, :cond_4

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 232
    .line 233
    .line 234
    iput-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 235
    .line 236
    :cond_4
    iget-object v4, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 237
    .line 238
    check-cast v4, Lcom/google/android/gms/internal/pal/X;

    .line 239
    .line 240
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/pal/X;->n(Lcom/google/android/gms/internal/pal/X;J)V

    .line 241
    .line 242
    .line 243
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_7

    .line 248
    .line 249
    iget-object v1, v8, Lcom/google/android/gms/internal/pal/D1;->d:Ljava/lang/Long;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 252
    .line 253
    .line 254
    move-result-wide v1

    .line 255
    iget-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 256
    .line 257
    if-eqz v3, :cond_6

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 260
    .line 261
    .line 262
    iput-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 263
    .line 264
    :cond_6
    iget-object v3, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 265
    .line 266
    check-cast v3, Lcom/google/android/gms/internal/pal/X;

    .line 267
    .line 268
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/pal/X;->r(Lcom/google/android/gms/internal/pal/X;J)V

    .line 269
    .line 270
    .line 271
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lcom/google/android/gms/internal/pal/X;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 278
    .line 279
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 280
    .line 281
    if-eqz v2, :cond_8

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 284
    .line 285
    .line 286
    iput-boolean v5, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 287
    .line 288
    :cond_8
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 289
    .line 290
    check-cast v1, Lcom/google/android/gms/internal/pal/m0;

    .line 291
    .line 292
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/m0;->D(Lcom/google/android/gms/internal/pal/m0;Lcom/google/android/gms/internal/pal/X;)V

    .line 293
    .line 294
    .line 295
    :cond_9
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/S1;->i:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 299
    .line 300
    if-eqz v0, :cond_f

    .line 301
    .line 302
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 303
    .line 304
    new-array v7, v4, [Ljava/lang/Object;

    .line 305
    .line 306
    aput-object v0, v7, v5

    .line 307
    .line 308
    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ljava/lang/String;

    .line 313
    .line 314
    new-instance v1, Lcom/google/android/gms/internal/pal/q1;

    .line 315
    .line 316
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/pal/q1;-><init>(Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 320
    .line 321
    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 323
    .line 324
    iget-object v7, v1, Lcom/google/android/gms/internal/pal/q1;->b:Ljava/lang/Long;

    .line 325
    .line 326
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 327
    .line 328
    .line 329
    move-result-wide v7

    .line 330
    iget-boolean v9, v6, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 331
    .line 332
    if-eqz v9, :cond_a

    .line 333
    .line 334
    invoke-virtual {v6}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 335
    .line 336
    .line 337
    iput-boolean v5, v6, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 338
    .line 339
    :cond_a
    iget-object v6, v6, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 340
    .line 341
    check-cast v6, Lcom/google/android/gms/internal/pal/m0;

    .line 342
    .line 343
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/pal/m0;->u(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 344
    .line 345
    .line 346
    iget-object v6, v1, Lcom/google/android/gms/internal/pal/q1;->c:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v6, Ljava/lang/Boolean;

    .line 349
    .line 350
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-eqz v6, :cond_d

    .line 355
    .line 356
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 357
    .line 358
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/q1;->d:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v1, Ljava/lang/Boolean;

    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eq v4, v1, :cond_b

    .line 367
    .line 368
    goto :goto_0

    .line 369
    :cond_b
    const/4 v3, 0x1

    .line 370
    :goto_0
    iget-boolean v1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 371
    .line 372
    if-eqz v1, :cond_c

    .line 373
    .line 374
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 375
    .line 376
    .line 377
    iput-boolean v5, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 378
    .line 379
    :cond_c
    iget-object v1, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 380
    .line 381
    check-cast v1, Lcom/google/android/gms/internal/pal/m0;

    .line 382
    .line 383
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/pal/m0;->Y(Lcom/google/android/gms/internal/pal/m0;I)V

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :catchall_0
    move-exception v1

    .line 388
    goto :goto_2

    .line 389
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 390
    .line 391
    iget-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 392
    .line 393
    if-eqz v3, :cond_e

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 396
    .line 397
    .line 398
    iput-boolean v5, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 399
    .line 400
    :cond_e
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 401
    .line 402
    check-cast v1, Lcom/google/android/gms/internal/pal/m0;

    .line 403
    .line 404
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pal/m0;->Y(Lcom/google/android/gms/internal/pal/m0;I)V

    .line 405
    .line 406
    .line 407
    :goto_1
    monitor-exit v0

    .line 408
    goto :goto_3

    .line 409
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    throw v1

    .line 411
    :cond_f
    :goto_3
    return-void

    .line 412
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/pal/S1;->c()V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

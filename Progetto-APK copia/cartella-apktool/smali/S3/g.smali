.class public final LS3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;
.implements Lv4/c;
.implements Lc4/C;


# instance fields
.field public final synthetic G:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, LS3/g;->G:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LS3/g;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LS3/g;->G:I

    return-void
.end method

.method public static final c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/L2;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/L2;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/L2;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/L2;->G:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/L2;->b()Lcom/google/android/gms/internal/measurement/L2;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/L2;->f()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/L2;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method public static final d()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public final a(LK/k;)V
    .locals 1

    .line 1
    iget-object p1, p1, LK/k;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "Failed to load and cache a form, error="

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "UserMessagingPlatform"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;LS3/b;)LA2/i;
    .locals 5

    .line 1
    iget v0, p0, LS3/g;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x2

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    new-instance v0, LA2/i;

    .line 11
    .line 12
    invoke-direct {v0, v4}, LA2/i;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, p1, p2}, LS3/b;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iput v4, v0, LA2/i;->a:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {p3, p1, p2, v1}, LS3/b;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, v0, LA2/i;->b:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p3, p1, p2, v3}, LS3/b;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v0, LA2/i;->b:I

    .line 35
    .line 36
    :goto_0
    iget p2, v0, LA2/i;->a:I

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, p2

    .line 44
    :cond_2
    if-lt p1, v1, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 v1, -0x1

    .line 49
    :goto_1
    iput v1, v0, LA2/i;->c:I

    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_1
    new-instance v0, LA2/i;

    .line 53
    .line 54
    invoke-direct {v0, v4}, LA2/i;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p3, p1, p2}, LS3/b;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iput v4, v0, LA2/i;->a:I

    .line 62
    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    invoke-interface {p3, p1, p2, v1}, LS3/b;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, v0, LA2/i;->b:I

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-interface {p3, p1, p2, v3}, LS3/b;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, v0, LA2/i;->b:I

    .line 77
    .line 78
    :goto_2
    iget p2, v0, LA2/i;->a:I

    .line 79
    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v1, p2

    .line 86
    :cond_6
    if-lt v1, p1, :cond_7

    .line 87
    .line 88
    const/4 v1, -0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_7
    const/4 v1, 0x1

    .line 91
    :goto_3
    iput v1, v0, LA2/i;->c:I

    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_2
    new-instance v0, LA2/i;

    .line 95
    .line 96
    invoke-direct {v0, v4}, LA2/i;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p3, p1, p2}, LS3/b;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    iput v4, v0, LA2/i;->a:I

    .line 104
    .line 105
    invoke-interface {p3, p1, p2, v3}, LS3/b;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, v0, LA2/i;->b:I

    .line 110
    .line 111
    iget p2, v0, LA2/i;->a:I

    .line 112
    .line 113
    if-nez p2, :cond_8

    .line 114
    .line 115
    if-nez p1, :cond_9

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move v1, p2

    .line 119
    :cond_9
    if-lt v1, p1, :cond_a

    .line 120
    .line 121
    const/4 v1, -0x1

    .line 122
    goto :goto_4

    .line 123
    :cond_a
    const/4 v1, 0x1

    .line 124
    :goto_4
    iput v1, v0, LA2/i;->c:I

    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_3
    new-instance v0, LA2/i;

    .line 128
    .line 129
    invoke-direct {v0, v4}, LA2/i;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p3, p1, p2, v3}, LS3/b;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iput v1, v0, LA2/i;->b:I

    .line 137
    .line 138
    if-eqz v1, :cond_b

    .line 139
    .line 140
    iput v3, v0, LA2/i;->c:I

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_b
    invoke-interface {p3, p1, p2}, LS3/b;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, v0, LA2/i;->a:I

    .line 148
    .line 149
    if-eqz p1, :cond_c

    .line 150
    .line 151
    iput v2, v0, LA2/i;->c:I

    .line 152
    .line 153
    :cond_c
    :goto_5
    return-object v0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LS3/g;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/E3;->H:Lcom/google/android/gms/internal/measurement/E3;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/E3;->G:Ly4/w;

    .line 11
    .line 12
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/F3;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/gms/internal/measurement/G3;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/measurement/G3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_1
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/v3;->H:Lcom/google/android/gms/internal/measurement/v3;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/v3;->G:Ly4/w;

    .line 38
    .line 39
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    .line 42
    .line 43
    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    long-to-int v1, v0

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :pswitch_2
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/gms/internal/measurement/J4;->H:Lcom/google/android/gms/internal/measurement/J4;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/J4;->G:Ly4/w;

    .line 71
    .line 72
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/google/android/gms/internal/measurement/K4;

    .line 75
    .line 76
    check-cast v0, Lcom/google/android/gms/internal/measurement/L4;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/google/android/gms/internal/measurement/L4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :pswitch_3
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/measurement/G4;->H:Lcom/google/android/gms/internal/measurement/G4;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/G4;->G:Ly4/w;

    .line 98
    .line 99
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lcom/google/android/gms/internal/measurement/H4;

    .line 102
    .line 103
    check-cast v0, Lcom/google/android/gms/internal/measurement/I4;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v0, Lcom/google/android/gms/internal/measurement/I4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :pswitch_4
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 121
    .line 122
    sget-object v0, Lcom/google/android/gms/internal/measurement/c4;->H:Lcom/google/android/gms/internal/measurement/c4;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/c4;->G:Ly4/w;

    .line 125
    .line 126
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/google/android/gms/internal/measurement/d4;

    .line 129
    .line 130
    check-cast v0, Lcom/google/android/gms/internal/measurement/e4;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v0, Lcom/google/android/gms/internal/measurement/e4;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :pswitch_5
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 148
    .line 149
    sget-object v0, Lcom/google/android/gms/internal/measurement/H3;->H:Lcom/google/android/gms/internal/measurement/H3;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/H3;->a()Lcom/google/android/gms/internal/measurement/I3;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/google/android/gms/internal/measurement/J3;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/google/android/gms/internal/measurement/J3;->c:Lcom/google/android/gms/internal/measurement/W1;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :pswitch_6
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 173
    .line 174
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->o0:Lcom/google/android/gms/internal/measurement/W1;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/lang/Long;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    long-to-int v1, v0

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0

    .line 203
    :pswitch_7
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 204
    .line 205
    sget-object v0, Lcom/google/android/gms/internal/measurement/H3;->H:Lcom/google/android/gms/internal/measurement/H3;

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/H3;->a()Lcom/google/android/gms/internal/measurement/I3;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lcom/google/android/gms/internal/measurement/J3;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    sget-object v0, Lcom/google/android/gms/internal/measurement/J3;->a:Lcom/google/android/gms/internal/measurement/W1;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :pswitch_8
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 229
    .line 230
    sget-object v0, Lcom/google/android/gms/internal/measurement/H3;->H:Lcom/google/android/gms/internal/measurement/H3;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/H3;->a()Lcom/google/android/gms/internal/measurement/I3;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/google/android/gms/internal/measurement/J3;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    sget-object v0, Lcom/google/android/gms/internal/measurement/J3;->b:Lcom/google/android/gms/internal/measurement/W1;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    return-object v0

    .line 253
    :pswitch_9
    sget-object v0, LZ3/G;->b:LZ3/F;

    .line 254
    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    new-instance v1, LZ3/Z;

    .line 259
    .line 260
    invoke-direct {v1, v0}, LZ3/Z;-><init>(LZ3/F;)V

    .line 261
    .line 262
    .line 263
    return-object v1

    .line 264
    :pswitch_a
    sget-object v0, LZ3/G;->b:LZ3/F;

    .line 265
    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    return-object v0

    .line 270
    :pswitch_b
    sget-object v0, LZ3/G;->a:Landroid/os/Handler;

    .line 271
    .line 272
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    :pswitch_c
    new-instance v0, LZ3/b;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    return-object v0

    .line 282
    nop

    .line 283
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

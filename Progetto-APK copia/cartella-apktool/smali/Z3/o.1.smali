.class public final synthetic LZ3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/c;
.implements Lc4/H1;
.implements LO5/a;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LZ3/o;->G:I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lc4/w0;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object p1, LI5/a;->e:LI5/a;

    iput-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, LU4/b;

    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/c0;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 11
    iput v0, p0, LZ3/o;->G:I

    .line 12
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    iput-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 22
    iput v0, p0, LZ3/o;->G:I

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 25
    iput v1, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    const v1, 0x3f19999a    # 0.6f

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 27
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    const/4 v0, 0x0

    .line 28
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/z;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 18
    iput v0, p0, LZ3/o;->G:I

    .line 19
    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/protobuf/v1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 20
    iput-object p0, p1, Lcom/google/protobuf/z;->c:LZ3/o;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LZ3/o;->G:I

    iput-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 14
    iput v0, p0, LZ3/o;->G:I

    .line 15
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lc4/w0;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static y(Ljava/lang/String;)LZ3/o;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Lc4/x0;->c(C)Lc4/u0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    sget-object p0, Lc4/u0;->H:Lc4/u0;

    .line 26
    .line 27
    :goto_1
    new-instance v0, LZ3/o;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-direct {v0, p0, v1}, LZ3/o;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 5

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc4/l0;

    .line 11
    .line 12
    iget-object v1, v0, Lc4/l0;->N:Lc4/Z;

    .line 13
    .line 14
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lc4/l0;->T:LP3/b;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v1, v3, v4}, Lc4/Z;->x(J)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v0, Lc4/l0;->N:Lc4/Z;

    .line 33
    .line 34
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lc4/Z;->S:Lc4/Y;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v1, v3}, Lc4/Y;->a(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 49
    .line 50
    .line 51
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 52
    .line 53
    const/16 v3, 0x64

    .line 54
    .line 55
    if-ne v1, v3, :cond_0

    .line 56
    .line 57
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 58
    .line 59
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "Detected application was in foreground"

    .line 63
    .line 64
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-virtual {p0, v0, v1}, LZ3/o;->D(J)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public final B(ILjava/lang/String;Ljava/util/List;ZZ)V
    .locals 3

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    if-eq p1, v1, :cond_4

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-eq p1, v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lc4/f0;

    .line 17
    .line 18
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lc4/l0;

    .line 21
    .line 22
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 23
    .line 24
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lc4/T;->R:Lc4/Q;

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    if-eqz p4, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lc4/f0;

    .line 36
    .line 37
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lc4/l0;

    .line 40
    .line 41
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 42
    .line 43
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Lc4/T;->P:Lc4/Q;

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_1
    if-nez p5, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lc4/f0;

    .line 55
    .line 56
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lc4/l0;

    .line 59
    .line 60
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 61
    .line 62
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lc4/T;->Q:Lc4/Q;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lc4/f0;

    .line 71
    .line 72
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lc4/l0;

    .line 75
    .line 76
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 77
    .line 78
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lc4/f0;

    .line 87
    .line 88
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lc4/l0;

    .line 91
    .line 92
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 93
    .line 94
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    if-eqz p4, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Lc4/f0;

    .line 105
    .line 106
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Lc4/l0;

    .line 109
    .line 110
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 111
    .line 112
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p1, Lc4/T;->M:Lc4/Q;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    if-nez p5, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lc4/f0;

    .line 123
    .line 124
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Lc4/l0;

    .line 127
    .line 128
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 129
    .line 130
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p1, Lc4/T;->N:Lc4/Q;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Lc4/f0;

    .line 139
    .line 140
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Lc4/l0;

    .line 143
    .line 144
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 145
    .line 146
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Lc4/f0;

    .line 155
    .line 156
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Lc4/l0;

    .line 159
    .line 160
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 161
    .line 162
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p1, Lc4/T;->S:Lc4/Q;

    .line 166
    .line 167
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result p4

    .line 171
    const/4 p5, 0x0

    .line 172
    if-eq p4, v1, :cond_a

    .line 173
    .line 174
    const/4 v2, 0x2

    .line 175
    if-eq p4, v2, :cond_9

    .line 176
    .line 177
    if-eq p4, v0, :cond_8

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p5

    .line 191
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p1, p4, p5, p3, p2}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_9
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p1, p4, p3, p2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_a
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p1, p3, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final C(JZ)V
    .locals 3

    .line 1
    iget-object p3, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p3, Lc4/k1;

    .line 4
    .line 5
    invoke-virtual {p3}, Lc4/z;->m()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lc4/k1;->q()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p3, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc4/l0;

    .line 14
    .line 15
    iget-object v1, v0, Lc4/l0;->N:Lc4/Z;

    .line 16
    .line 17
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, p2}, Lc4/Z;->x(J)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lc4/Z;->S:Lc4/Y;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Lc4/Y;->a(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p3, Lc1/d;->G:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p3, Lc4/l0;

    .line 40
    .line 41
    invoke-virtual {p3}, Lc4/l0;->n()Lc4/L;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Lc4/L;->w()V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 49
    .line 50
    .line 51
    iget-object p3, v0, Lc4/Z;->W:LE1/I;

    .line 52
    .line 53
    invoke-virtual {p3, p1, p2}, LE1/I;->b(J)V

    .line 54
    .line 55
    .line 56
    iget-object p3, v0, Lc4/Z;->S:Lc4/Y;

    .line 57
    .line 58
    invoke-virtual {p3}, Lc4/Y;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, LZ3/o;->D(J)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public final D(J)V
    .locals 10

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lc4/l0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lc4/l0;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v6, v1

    .line 23
    check-cast v6, Lc4/l0;

    .line 24
    .line 25
    iget-object v1, v6, Lc4/l0;->N:Lc4/Z;

    .line 26
    .line 27
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v1, Lc4/Z;->W:LE1/I;

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, LE1/I;->b(J)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v6, Lc4/l0;->T:LP3/b;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iget-object v3, v6, Lc4/l0;->O:Lc4/T;

    .line 45
    .line 46
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "Session started, time"

    .line 54
    .line 55
    iget-object v3, v3, Lc4/T;->T:Lc4/Q;

    .line 56
    .line 57
    invoke-virtual {v3, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v1, 0x3e8

    .line 61
    .line 62
    div-long v7, p1, v1

    .line 63
    .line 64
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v9, v0

    .line 67
    check-cast v9, Lc4/l0;

    .line 68
    .line 69
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v0, v9, Lc4/l0;->V:Lc4/K0;

    .line 74
    .line 75
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 76
    .line 77
    .line 78
    const-string v4, "auto"

    .line 79
    .line 80
    const-string v5, "_sid"

    .line 81
    .line 82
    move-wide v1, p1

    .line 83
    invoke-virtual/range {v0 .. v5}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v6, v6, Lc4/l0;->N:Lc4/Z;

    .line 87
    .line 88
    invoke-static {v6}, Lc4/l0;->i(Lc4/s0;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v6, Lc4/Z;->X:LE1/I;

    .line 92
    .line 93
    invoke-virtual {v0, v7, v8}, LE1/I;->b(J)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v6, Lc4/Z;->S:Lc4/Y;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lc4/Y;->a(Z)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Landroid/os/Bundle;

    .line 103
    .line 104
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v0, "_sid"

    .line 108
    .line 109
    invoke-virtual {v3, v0, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    iget-object v7, v9, Lc4/l0;->V:Lc4/K0;

    .line 113
    .line 114
    invoke-static {v7}, Lc4/l0;->j(Lc4/B;)V

    .line 115
    .line 116
    .line 117
    const-string v4, "auto"

    .line 118
    .line 119
    const-string v5, "_s"

    .line 120
    .line 121
    move-object v0, v7

    .line 122
    move-wide v1, p1

    .line 123
    invoke-virtual/range {v0 .. v5}, Lc4/K0;->z(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v6, Lc4/Z;->c0:LB0/c;

    .line 127
    .line 128
    invoke-virtual {v0}, LB0/c;->n()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_1

    .line 137
    .line 138
    new-instance v3, Landroid/os/Bundle;

    .line 139
    .line 140
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v1, "_ffr"

    .line 144
    .line 145
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v7}, Lc4/l0;->j(Lc4/B;)V

    .line 149
    .line 150
    .line 151
    const-string v4, "auto"

    .line 152
    .line 153
    const-string v5, "_ssr"

    .line 154
    .line 155
    move-object v0, v7

    .line 156
    move-wide v1, p1

    .line 157
    invoke-virtual/range {v0 .. v5}, Lc4/K0;->z(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_1
    :goto_0
    return-void
.end method

.method public final E(Lc4/w0;I)V
    .locals 2

    .line 1
    sget-object v0, Lc4/i;->H:Lc4/i;

    .line 2
    .line 3
    const/16 v1, -0x1e

    .line 4
    .line 5
    if-eq p2, v1, :cond_3

    .line 6
    .line 7
    const/16 v1, -0x14

    .line 8
    .line 9
    if-eq p2, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, -0xa

    .line 12
    .line 13
    if-eq p2, v1, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    const/16 v1, 0x1e

    .line 18
    .line 19
    if-eq p2, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lc4/i;->L:Lc4/i;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lc4/i;->K:Lc4/i;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Lc4/i;->M:Lc4/i;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    sget-object v0, Lc4/i;->N:Lc4/i;

    .line 32
    .line 33
    :goto_0
    iget-object p2, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p2, Ljava/util/EnumMap;

    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final F(Lc4/w0;Lc4/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/EnumMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final a(LK/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb7/n;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lb7/n;->a(LK/k;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lc4/K0;

    .line 11
    .line 12
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lc4/l0;

    .line 15
    .line 16
    iget-object p1, p1, Lc4/l0;->T:LP3/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x1

    .line 27
    const-string v1, "auto"

    .line 28
    .line 29
    const-string v2, "_err"

    .line 30
    .line 31
    move-object v3, p3

    .line 32
    invoke-virtual/range {v0 .. v7}, Lc4/K0;->x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lc4/K0;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "Unexpected call on client side"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final c(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(LO5/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO5/k;

    .line 4
    .line 5
    iget-object v0, v0, LO5/k;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->G:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->c()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LO5/k;

    .line 15
    .line 16
    iget-object v0, v0, LO5/k;->i:Lu5/d;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-boolean v1, v0, Lu5/d;->b:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lu5/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, LO5/k;

    .line 33
    .line 34
    iget-object v0, v0, LO5/k;->j:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v1, LU0/r;

    .line 37
    .line 38
    const/16 v2, 0x12

    .line 39
    .line 40
    invoke-direct {v1, v2, p0, p1}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v0

    .line 48
    throw p1
.end method

.method public final e([II)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    move-object/from16 v5, p0

    .line 9
    .line 10
    iget-object v6, v5, LZ3/o;->H:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v7, v6

    .line 13
    check-cast v7, Lx5/a;

    .line 14
    .line 15
    array-length v8, v0

    .line 16
    if-eqz v8, :cond_1b

    .line 17
    .line 18
    array-length v8, v0

    .line 19
    if-le v8, v4, :cond_2

    .line 20
    .line 21
    aget v9, v0, v3

    .line 22
    .line 23
    if-nez v9, :cond_2

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    :goto_0
    if-ge v9, v8, :cond_0

    .line 27
    .line 28
    aget v10, v0, v9

    .line 29
    .line 30
    if-nez v10, :cond_0

    .line 31
    .line 32
    add-int/2addr v9, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-ne v9, v8, :cond_1

    .line 35
    .line 36
    filled-new-array {v3}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-int/2addr v8, v9

    .line 42
    new-array v10, v8, [I

    .line 43
    .line 44
    invoke-static {v0, v9, v10, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    move-object v8, v10

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v8, v0

    .line 50
    :goto_1
    new-array v9, v1, [I

    .line 51
    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x1

    .line 54
    :goto_2
    if-ge v10, v1, :cond_7

    .line 55
    .line 56
    move-object v12, v6

    .line 57
    check-cast v12, Lx5/a;

    .line 58
    .line 59
    iget v13, v12, Lx5/a;->g:I

    .line 60
    .line 61
    add-int/2addr v13, v10

    .line 62
    iget-object v12, v12, Lx5/a;->a:[I

    .line 63
    .line 64
    aget v12, v12, v13

    .line 65
    .line 66
    if-nez v12, :cond_3

    .line 67
    .line 68
    array-length v12, v8

    .line 69
    sub-int/2addr v12, v4

    .line 70
    aget v12, v8, v12

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_3
    if-ne v12, v4, :cond_5

    .line 74
    .line 75
    array-length v12, v8

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    :goto_3
    if-ge v14, v12, :cond_4

    .line 79
    .line 80
    aget v15, v8, v14

    .line 81
    .line 82
    sget-object v16, Lx5/a;->h:Lx5/a;

    .line 83
    .line 84
    xor-int/2addr v13, v15

    .line 85
    add-int/2addr v14, v4

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    move v12, v13

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    aget v13, v8, v3

    .line 90
    .line 91
    array-length v14, v8

    .line 92
    const/4 v15, 0x1

    .line 93
    :goto_4
    if-ge v15, v14, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7, v12, v13}, Lx5/a;->c(II)I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    aget v16, v8, v15

    .line 100
    .line 101
    xor-int v13, v13, v16

    .line 102
    .line 103
    add-int/2addr v15, v4

    .line 104
    goto :goto_4

    .line 105
    :goto_5
    add-int/lit8 v13, v1, -0x1

    .line 106
    .line 107
    sub-int/2addr v13, v10

    .line 108
    aput v12, v9, v13

    .line 109
    .line 110
    if-eqz v12, :cond_6

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    :cond_6
    add-int/2addr v10, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_7
    if-eqz v11, :cond_8

    .line 116
    .line 117
    return-void

    .line 118
    :cond_8
    new-instance v7, Lx5/b;

    .line 119
    .line 120
    move-object v8, v6

    .line 121
    check-cast v8, Lx5/a;

    .line 122
    .line 123
    invoke-direct {v7, v8, v9}, Lx5/b;-><init>(Lx5/a;[I)V

    .line 124
    .line 125
    .line 126
    move-object v8, v6

    .line 127
    check-cast v8, Lx5/a;

    .line 128
    .line 129
    invoke-virtual {v8, v1, v4}, Lx5/a;->a(II)Lx5/b;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v8}, Lx5/b;->d()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    invoke-virtual {v7}, Lx5/b;->d()I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-ge v9, v10, :cond_9

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    move-object/from16 v17, v8

    .line 145
    .line 146
    move-object v8, v7

    .line 147
    move-object/from16 v7, v17

    .line 148
    .line 149
    :goto_6
    move-object v9, v6

    .line 150
    check-cast v9, Lx5/a;

    .line 151
    .line 152
    iget-object v10, v9, Lx5/a;->c:Lx5/b;

    .line 153
    .line 154
    iget-object v9, v9, Lx5/a;->d:Lx5/b;

    .line 155
    .line 156
    :goto_7
    move-object/from16 v17, v8

    .line 157
    .line 158
    move-object v8, v7

    .line 159
    move-object/from16 v7, v17

    .line 160
    .line 161
    move-object/from16 v18, v10

    .line 162
    .line 163
    move-object v10, v9

    .line 164
    move-object/from16 v9, v18

    .line 165
    .line 166
    invoke-virtual {v7}, Lx5/b;->d()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    div-int/lit8 v12, v1, 0x2

    .line 171
    .line 172
    if-lt v11, v12, :cond_d

    .line 173
    .line 174
    invoke-virtual {v7}, Lx5/b;->e()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-nez v11, :cond_c

    .line 179
    .line 180
    move-object v11, v6

    .line 181
    check-cast v11, Lx5/a;

    .line 182
    .line 183
    iget-object v11, v11, Lx5/a;->c:Lx5/b;

    .line 184
    .line 185
    invoke-virtual {v7}, Lx5/b;->d()I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    invoke-virtual {v7, v12}, Lx5/b;->c(I)I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    move-object v13, v6

    .line 194
    check-cast v13, Lx5/a;

    .line 195
    .line 196
    invoke-virtual {v13, v12}, Lx5/a;->b(I)I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    :goto_8
    invoke-virtual {v8}, Lx5/b;->d()I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    invoke-virtual {v7}, Lx5/b;->d()I

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    if-lt v13, v14, :cond_a

    .line 209
    .line 210
    invoke-virtual {v8}, Lx5/b;->e()Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-nez v13, :cond_a

    .line 215
    .line 216
    invoke-virtual {v8}, Lx5/b;->d()I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    invoke-virtual {v7}, Lx5/b;->d()I

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    sub-int/2addr v13, v14

    .line 225
    move-object v14, v6

    .line 226
    check-cast v14, Lx5/a;

    .line 227
    .line 228
    invoke-virtual {v8}, Lx5/b;->d()I

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    invoke-virtual {v8, v15}, Lx5/b;->c(I)I

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    invoke-virtual {v14, v15, v12}, Lx5/a;->c(II)I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    move-object v15, v6

    .line 241
    check-cast v15, Lx5/a;

    .line 242
    .line 243
    invoke-virtual {v15, v13, v14}, Lx5/a;->a(II)Lx5/b;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    invoke-virtual {v11, v15}, Lx5/b;->a(Lx5/b;)Lx5/b;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    invoke-virtual {v7, v13, v14}, Lx5/b;->h(II)Lx5/b;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v8, v13}, Lx5/b;->a(Lx5/b;)Lx5/b;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    goto :goto_8

    .line 260
    :cond_a
    invoke-virtual {v11, v10}, Lx5/b;->g(Lx5/b;)Lx5/b;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-virtual {v11, v9}, Lx5/b;->a(Lx5/b;)Lx5/b;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v8}, Lx5/b;->d()I

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    invoke-virtual {v7}, Lx5/b;->d()I

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    if-ge v11, v12, :cond_b

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    const-string v1, "Division algorithm failed to reduce polynomial?"

    .line 282
    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :cond_c
    new-instance v0, Lx5/c;

    .line 288
    .line 289
    const-string v1, "r_{i-1} was zero"

    .line 290
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :cond_d
    invoke-virtual {v10, v3}, Lx5/b;->c(I)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_1a

    .line 300
    .line 301
    move-object v8, v6

    .line 302
    check-cast v8, Lx5/a;

    .line 303
    .line 304
    invoke-virtual {v8, v1}, Lx5/a;->b(I)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-virtual {v10, v1}, Lx5/b;->f(I)Lx5/b;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-virtual {v7, v1}, Lx5/b;->f(I)Lx5/b;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    new-array v2, v2, [Lx5/b;

    .line 317
    .line 318
    aput-object v8, v2, v3

    .line 319
    .line 320
    aput-object v1, v2, v4

    .line 321
    .line 322
    aget-object v1, v2, v3

    .line 323
    .line 324
    aget-object v2, v2, v4

    .line 325
    .line 326
    invoke-virtual {v1}, Lx5/b;->d()I

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-ne v7, v4, :cond_e

    .line 331
    .line 332
    invoke-virtual {v1, v4}, Lx5/b;->c(I)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    filled-new-array {v1}, [I

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    goto :goto_a

    .line 341
    :cond_e
    new-array v8, v7, [I

    .line 342
    .line 343
    const/4 v9, 0x1

    .line 344
    const/4 v10, 0x0

    .line 345
    :goto_9
    move-object v11, v6

    .line 346
    check-cast v11, Lx5/a;

    .line 347
    .line 348
    iget v11, v11, Lx5/a;->e:I

    .line 349
    .line 350
    if-ge v9, v11, :cond_10

    .line 351
    .line 352
    if-ge v10, v7, :cond_10

    .line 353
    .line 354
    invoke-virtual {v1, v9}, Lx5/b;->b(I)I

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    if-nez v11, :cond_f

    .line 359
    .line 360
    move-object v11, v6

    .line 361
    check-cast v11, Lx5/a;

    .line 362
    .line 363
    invoke-virtual {v11, v9}, Lx5/a;->b(I)I

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    aput v11, v8, v10

    .line 368
    .line 369
    add-int/2addr v10, v4

    .line 370
    :cond_f
    add-int/2addr v9, v4

    .line 371
    goto :goto_9

    .line 372
    :cond_10
    if-ne v10, v7, :cond_19

    .line 373
    .line 374
    move-object v1, v8

    .line 375
    :goto_a
    array-length v7, v1

    .line 376
    new-array v8, v7, [I

    .line 377
    .line 378
    const/4 v9, 0x0

    .line 379
    :goto_b
    if-ge v9, v7, :cond_15

    .line 380
    .line 381
    move-object v10, v6

    .line 382
    check-cast v10, Lx5/a;

    .line 383
    .line 384
    aget v11, v1, v9

    .line 385
    .line 386
    invoke-virtual {v10, v11}, Lx5/a;->b(I)I

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    const/4 v11, 0x0

    .line 391
    const/4 v12, 0x1

    .line 392
    :goto_c
    if-ge v11, v7, :cond_13

    .line 393
    .line 394
    if-eq v9, v11, :cond_12

    .line 395
    .line 396
    move-object v13, v6

    .line 397
    check-cast v13, Lx5/a;

    .line 398
    .line 399
    aget v14, v1, v11

    .line 400
    .line 401
    invoke-virtual {v13, v14, v10}, Lx5/a;->c(II)I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    and-int/lit8 v14, v13, 0x1

    .line 406
    .line 407
    if-nez v14, :cond_11

    .line 408
    .line 409
    or-int/2addr v13, v4

    .line 410
    goto :goto_d

    .line 411
    :cond_11
    and-int/lit8 v13, v13, -0x2

    .line 412
    .line 413
    :goto_d
    move-object v14, v6

    .line 414
    check-cast v14, Lx5/a;

    .line 415
    .line 416
    invoke-virtual {v14, v12, v13}, Lx5/a;->c(II)I

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    :cond_12
    add-int/2addr v11, v4

    .line 421
    goto :goto_c

    .line 422
    :cond_13
    move-object v11, v6

    .line 423
    check-cast v11, Lx5/a;

    .line 424
    .line 425
    invoke-virtual {v2, v10}, Lx5/b;->b(I)I

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    move-object v14, v6

    .line 430
    check-cast v14, Lx5/a;

    .line 431
    .line 432
    invoke-virtual {v14, v12}, Lx5/a;->b(I)I

    .line 433
    .line 434
    .line 435
    move-result v12

    .line 436
    invoke-virtual {v11, v13, v12}, Lx5/a;->c(II)I

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    aput v11, v8, v9

    .line 441
    .line 442
    move-object v12, v6

    .line 443
    check-cast v12, Lx5/a;

    .line 444
    .line 445
    iget v13, v12, Lx5/a;->g:I

    .line 446
    .line 447
    if-eqz v13, :cond_14

    .line 448
    .line 449
    invoke-virtual {v12, v11, v10}, Lx5/a;->c(II)I

    .line 450
    .line 451
    .line 452
    move-result v10

    .line 453
    aput v10, v8, v9

    .line 454
    .line 455
    :cond_14
    add-int/2addr v9, v4

    .line 456
    goto :goto_b

    .line 457
    :cond_15
    :goto_e
    array-length v2, v1

    .line 458
    if-ge v3, v2, :cond_18

    .line 459
    .line 460
    array-length v2, v0

    .line 461
    sub-int/2addr v2, v4

    .line 462
    move-object v7, v6

    .line 463
    check-cast v7, Lx5/a;

    .line 464
    .line 465
    aget v9, v1, v3

    .line 466
    .line 467
    if-eqz v9, :cond_17

    .line 468
    .line 469
    iget-object v7, v7, Lx5/a;->b:[I

    .line 470
    .line 471
    aget v7, v7, v9

    .line 472
    .line 473
    sub-int/2addr v2, v7

    .line 474
    if-ltz v2, :cond_16

    .line 475
    .line 476
    aget v7, v0, v2

    .line 477
    .line 478
    aget v9, v8, v3

    .line 479
    .line 480
    xor-int/2addr v7, v9

    .line 481
    aput v7, v0, v2

    .line 482
    .line 483
    add-int/2addr v3, v4

    .line 484
    goto :goto_e

    .line 485
    :cond_16
    new-instance v0, Lx5/c;

    .line 486
    .line 487
    const-string v1, "Bad error location"

    .line 488
    .line 489
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v0

    .line 493
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 497
    .line 498
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 499
    .line 500
    .line 501
    throw v0

    .line 502
    :cond_18
    return-void

    .line 503
    :cond_19
    new-instance v0, Lx5/c;

    .line 504
    .line 505
    const-string v1, "Error locator degree does not match number of roots"

    .line 506
    .line 507
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    throw v0

    .line 511
    :cond_1a
    new-instance v0, Lx5/c;

    .line 512
    .line 513
    const-string v1, "sigmaTilde(0) was zero"

    .line 514
    .line 515
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v0

    .line 519
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 520
    .line 521
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 522
    .line 523
    .line 524
    throw v0
.end method

.method public final f(Ljava/io/BufferedWriter;LT2/o;)V
    .locals 7

    .line 1
    new-instance v6, LR4/e;

    .line 2
    .line 3
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LR4/d;

    .line 6
    .line 7
    iget-object v2, v0, LR4/d;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v3, v0, LR4/d;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v4, v0, LR4/d;->c:LR4/a;

    .line 12
    .line 13
    iget-boolean v5, v0, LR4/d;->d:Z

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v5}, LR4/e;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;LR4/a;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, p2}, LR4/e;->e(Ljava/lang/Object;)LR4/e;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, LR4/e;->g()V

    .line 24
    .line 25
    .line 26
    iget-object p1, v6, LR4/e;->b:Landroid/util/JsonWriter;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO5/o;

    .line 4
    .line 5
    iget-object v0, v0, LO5/o;->h:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, LO5/o;

    .line 12
    .line 13
    iget-boolean v2, v2, LO5/o;->g:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, LO5/o;

    .line 18
    .line 19
    iget-object v1, v1, LO5/o;->c:Landroid/os/Handler;

    .line 20
    .line 21
    const v2, 0x7f0b05c6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public final h(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->y0(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i(ILcom/google/protobuf/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->A0(ILcom/google/protobuf/r;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide p2

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/z;->E0(IJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->G0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->C0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/z;->E0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->C0(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o(ILcom/google/protobuf/j2;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    check-cast p3, Lcom/google/protobuf/Q1;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/z;->O0(II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/protobuf/z;->c:LZ3/o;

    .line 12
    .line 13
    invoke-interface {p2, p3, v1}, Lcom/google/protobuf/j2;->f(Ljava/lang/Object;LZ3/o;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->O0(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->G0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/z;->R0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r(ILcom/google/protobuf/j2;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    check-cast p3, Lcom/google/protobuf/Q1;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p3, p2}, Lcom/google/protobuf/z;->I0(ILcom/google/protobuf/Q1;Lcom/google/protobuf/j2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->C0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/z;->E0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, LZ3/o;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sparse-switch v0, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, [Ljava/lang/String;

    .line 23
    .line 24
    array-length v0, v0

    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/google/protobuf/r;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/r;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_4

    .line 37
    .line 38
    mul-int/lit8 v3, v1, 0x2

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-ltz v3, :cond_1

    .line 42
    .line 43
    iget-object v5, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, [Ljava/lang/String;

    .line 46
    .line 47
    array-length v6, v5

    .line 48
    if-lt v3, v6, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    aget-object v5, v5, v3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    move-object v5, v4

    .line 55
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ": "

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    if-ltz v3, :cond_3

    .line 66
    .line 67
    iget-object v5, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, [Ljava/lang/String;

    .line 70
    .line 71
    array-length v6, v5

    .line 72
    if-lt v3, v6, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    aget-object v4, v5, v3

    .line 76
    .line 77
    :cond_3
    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, "\n"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "1"

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lc4/w0;->values()[Lc4/w0;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    array-length v3, v2

    .line 105
    :goto_4
    if-ge v1, v3, :cond_6

    .line 106
    .line 107
    aget-object v4, v2, v1

    .line 108
    .line 109
    iget-object v5, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v5, Ljava/util/EnumMap;

    .line 112
    .line 113
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lc4/i;

    .line 118
    .line 119
    if-nez v4, :cond_5

    .line 120
    .line 121
    sget-object v4, Lc4/i;->H:Lc4/i;

    .line 122
    .line 123
    :cond_5
    iget-char v4, v4, Lc4/i;->G:C

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    nop

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final u(II)V
    .locals 2

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    shl-int/lit8 v1, p2, 0x1

    .line 6
    .line 7
    shr-int/lit8 p2, p2, 0x1f

    .line 8
    .line 9
    xor-int/2addr p2, v1

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->P0(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final v(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    shl-long v1, p2, v1

    .line 7
    .line 8
    const/16 v3, 0x3f

    .line 9
    .line 10
    shr-long/2addr p2, v3

    .line 11
    xor-long/2addr p2, v1

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/z;->R0(IJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/z;->P0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final x(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/z;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/z;->R0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final z()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, LZ3/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/M1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/M1;->a:Landroid/content/ContentResolver;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/M1;->b:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "ConfigurationContentLdr"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "Unable to acquire ContentProviderClient, using default values"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/M1;->i:[Ljava/lang/String;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v2, v0

    .line 34
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    :try_start_1
    const-string v3, "ContentProvider query returned null cursor, using default values"

    .line 41
    .line 42
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 50
    .line 51
    .line 52
    move-object v0, v1

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :catchall_0
    move-exception v3

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 71
    .line 72
    .line 73
    move-object v0, v3

    .line 74
    goto :goto_6

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    goto :goto_7

    .line 77
    :catch_0
    move-exception v2

    .line 78
    goto :goto_5

    .line 79
    :cond_2
    const/16 v4, 0x100

    .line 80
    .line 81
    if-gt v3, v4, :cond_3

    .line 82
    .line 83
    :try_start_4
    new-instance v4, Lr/f;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Lr/m;-><init>(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    .line 90
    .line 91
    const/high16 v5, 0x3f800000    # 1.0f

    .line 92
    .line 93
    invoke-direct {v4, v3, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v5, 0x1

    .line 108
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_5

    .line 121
    .line 122
    const-string v3, "Cursor read incomplete (ContentProvider dead?), using default values"

    .line 123
    .line 124
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 136
    .line 137
    .line 138
    move-object v0, v4

    .line 139
    goto :goto_6

    .line 140
    :goto_3
    if-eqz v2, :cond_6

    .line 141
    .line 142
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catchall_2
    move-exception v2

    .line 147
    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_4
    throw v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 151
    :goto_5
    :try_start_8
    const-string v3, "ContentProvider query failed, using default values"

    .line 152
    .line 153
    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 160
    goto :goto_0

    .line 161
    :goto_6
    return-object v0

    .line 162
    :goto_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 163
    .line 164
    .line 165
    throw v1
.end method

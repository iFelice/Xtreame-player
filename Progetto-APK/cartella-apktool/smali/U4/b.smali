.class public LU4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/z;
.implements Lm0/n0;
.implements LS0/o;
.implements LI0/s;
.implements LK0/w;
.implements LK0/k;
.implements LP0/q;
.implements LS0/n;
.implements LS0/j;
.implements LU0/O;
.implements LA0/I;
.implements LD0/H;
.implements LG0/r;
.implements LM4/c;
.implements LL0/a;
.implements LR0/s;
.implements LT1/e;
.implements LY5/t;
.implements Lc4/g;
.implements Lp1/h;
.implements Lw2/j;
.implements Lz2/d;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, LU4/b;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static N(Ljava/util/ArrayList;Ljava/util/AbstractList;)LO0/j;
    .locals 1

    .line 1
    new-instance v0, LO0/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LO0/j;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static O(Ll/x;)Landroid/media/MediaCodec;
    .locals 2

    .line 1
    iget-object v0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LK0/o;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ll/x;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, LK0/o;

    .line 11
    .line 12
    iget-object p0, p0, LK0/o;->a:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "createCodec:"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public static R(Landroid/app/Activity;Le0/i;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p0, Le0/m;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Le0/m;

    .line 16
    .line 17
    invoke-interface {p0}, Le0/m;->h()Le0/o;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of v0, p0, Le0/o;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Le0/o;->f(Le0/i;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static T(Lm0/d;Z)Landroid/media/AudioAttributes;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 p1, 0x10

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lm0/d;->a()Lf/S;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p0, p0, Lf/S;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroid/media/AudioAttributes;

    .line 36
    .line 37
    return-object p0
.end method

.method public static U(Lcom/google/android/gms/internal/atv_ads_framework/x0;)Lq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    check-cast p0, Lq/a;

    .line 6
    .line 7
    return-object p0
.end method

.method public static V(Lj0/c;LB0/w0;)LS0/g;
    .locals 2

    .line 1
    iget-object p1, p1, LB0/w0;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/io/IOException;

    .line 4
    .line 5
    instance-of v0, p1, Ls0/A;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Ls0/A;

    .line 12
    .line 13
    iget p1, p1, Ls0/A;->J:I

    .line 14
    .line 15
    const/16 v0, 0x193

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/16 v0, 0x194

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x19a

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x1a0

    .line 28
    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x1f4

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0x1f7

    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    return-object v1

    .line 41
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lj0/c;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance p0, LS0/g;

    .line 49
    .line 50
    const-wide/32 v0, 0x493e0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v0, v1}, LS0/g;-><init>(IJ)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    const/4 p1, 0x2

    .line 58
    invoke-virtual {p0, p1}, Lj0/c;->a(I)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    new-instance p0, LS0/g;

    .line 65
    .line 66
    const-wide/32 v0, 0xea60

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1, v0, v1}, LS0/g;-><init>(IJ)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    return-object v1
.end method

.method public static Z(LB0/w0;)J
    .locals 3

    .line 1
    iget-object v0, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/IOException;

    .line 4
    .line 5
    instance-of v1, v0, Lm0/P;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    instance-of v1, v0, Ls0/w;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    instance-of v1, v0, LS0/l;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    sget v1, Ls0/j;->H:I

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    instance-of v1, v0, Ls0/j;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Ls0/j;

    .line 31
    .line 32
    iget v1, v1, Ls0/j;->G:I

    .line 33
    .line 34
    const/16 v2, 0x7d8

    .line 35
    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget p0, p0, LB0/w0;->H:I

    .line 45
    .line 46
    add-int/lit8 p0, p0, -0x1

    .line 47
    .line 48
    mul-int/lit16 p0, p0, 0x3e8

    .line 49
    .line 50
    const/16 v0, 0x1388

    .line 51
    .line 52
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    int-to-long v0, p0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :goto_2
    return-wide v0
.end method

.method public static a0(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    sget-object v0, LU/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1a

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :cond_0
    if-ltz p2, :cond_1a

    .line 11
    .line 12
    if-gez p3, :cond_1

    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v1, v3, :cond_1a

    .line 26
    .line 27
    if-eq v2, v3, :cond_1a

    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    goto/16 :goto_9

    .line 32
    .line 33
    :cond_2
    const/4 v4, 0x1

    .line 34
    if-eqz p4, :cond_17

    .line 35
    .line 36
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-ltz v1, :cond_4

    .line 45
    .line 46
    if-ge p4, v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-gez p2, :cond_5

    .line 50
    .line 51
    :cond_4
    :goto_0
    const/4 v1, -0x1

    .line 52
    goto :goto_3

    .line 53
    :cond_5
    :goto_1
    const/4 p4, 0x0

    .line 54
    :goto_2
    if-nez p2, :cond_6

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    if-gez v1, :cond_8

    .line 60
    .line 61
    if-eqz p4, :cond_7

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_7
    const/4 v1, 0x0

    .line 65
    goto :goto_3

    .line 66
    :cond_8
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz p4, :cond_a

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-nez p4, :cond_9

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_b

    .line 87
    .line 88
    add-int/lit8 p2, p2, -0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    if-eqz p4, :cond_c

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_c
    const/4 p4, 0x1

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-ltz v2, :cond_e

    .line 109
    .line 110
    if-ge p3, v2, :cond_d

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_d
    if-gez p2, :cond_f

    .line 114
    .line 115
    :cond_e
    :goto_4
    const/4 p3, -0x1

    .line 116
    goto :goto_7

    .line 117
    :cond_f
    :goto_5
    const/4 p4, 0x0

    .line 118
    :goto_6
    if-nez p2, :cond_10

    .line 119
    .line 120
    move p3, v2

    .line 121
    goto :goto_7

    .line 122
    :cond_10
    if-lt v2, p3, :cond_11

    .line 123
    .line 124
    if-eqz p4, :cond_16

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_11
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz p4, :cond_13

    .line 132
    .line 133
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    if-nez p4, :cond_12

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_12
    add-int/lit8 p2, p2, -0x1

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_14

    .line 150
    .line 151
    add-int/lit8 p2, p2, -0x1

    .line 152
    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    if-eqz p4, :cond_15

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    const/4 p4, 0x1

    .line 166
    goto :goto_6

    .line 167
    :cond_16
    :goto_7
    if-eq v1, v3, :cond_1a

    .line 168
    .line 169
    if-ne p3, v3, :cond_18

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_17
    sub-int/2addr v1, p2

    .line 173
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v2, p3

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    :cond_18
    const-class p2, LU/b;

    .line 187
    .line 188
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, [LU/b;

    .line 193
    .line 194
    if-eqz p2, :cond_1a

    .line 195
    .line 196
    array-length p4, p2

    .line 197
    if-lez p4, :cond_1a

    .line 198
    .line 199
    array-length p4, p2

    .line 200
    const/4 v2, 0x0

    .line 201
    :goto_8
    if-ge v2, p4, :cond_19

    .line 202
    .line 203
    aget-object v3, p2, v2

    .line 204
    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 219
    .line 220
    .line 221
    move-result p3

    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result p4

    .line 233
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 238
    .line 239
    .line 240
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 241
    .line 242
    .line 243
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 244
    .line 245
    .line 246
    const/4 v0, 0x1

    .line 247
    :cond_1a
    :goto_9
    return v0
.end method

.method public static c0(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Le0/z;->Companion:Le0/y;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Le0/z;

    .line 18
    .line 19
    invoke-direct {v0}, Le0/z;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/support/v4/media/session/a;->k(Landroid/app/Activity;Le0/z;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Le0/A;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic A(Lm0/v;)V
    .locals 0

    .line 1
    return-void
.end method

.method public B(Landroid/net/Uri;Ls0/k;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v0, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lp0/M;->U(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public C(LI0/o;LI0/l;)LS0/o;
    .locals 1

    .line 1
    new-instance v0, LI0/r;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, LI0/r;-><init>(LI0/o;LI0/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public D(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public E()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public H()LS0/o;
    .locals 3

    .line 1
    new-instance v0, LI0/r;

    .line 2
    .line 3
    sget-object v1, LI0/o;->n:LI0/o;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, LI0/r;-><init>(LI0/o;LI0/l;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public I()V
    .locals 0

    .line 1
    return-void
.end method

.method public J(LW0/t;)J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public K()V
    .locals 0

    .line 1
    return-void
.end method

.method public L(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public P(Lm0/t;)Lcom/bumptech/glide/d;
    .locals 4

    .line 1
    iget-object p1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v3, "application/x-scte35"

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x4

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v3, "application/x-emsg"

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x3

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v3, "application/id3"

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v2, 0x2

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v3, "application/x-icy"

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :sswitch_4
    const-string v3, "application/vnd.dvb.ait"

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v2, 0x0

    .line 73
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_0
    new-instance p1, Lk1/c;

    .line 78
    .line 79
    invoke-direct {p1}, Lk1/c;-><init>()V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :pswitch_1
    new-instance p1, Lf1/b;

    .line 84
    .line 85
    invoke-direct {p1, v1}, Lf1/b;-><init>(I)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_2
    new-instance p1, Li1/i;

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-direct {p1, v0}, Li1/i;-><init>(LN/i;)V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    :pswitch_3
    new-instance p1, Lh1/a;

    .line 97
    .line 98
    invoke-direct {p1}, Lh1/a;-><init>()V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :pswitch_4
    new-instance p1, Lf1/b;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Lf1/b;-><init>(I)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    .line 111
    .line 112
    invoke-static {v1, p1}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    nop

    .line 121
    :sswitch_data_0
    .sparse-switch
        -0x50bb4913 -> :sswitch_4
        -0x505c61b5 -> :sswitch_3
        -0x4a682ec7 -> :sswitch_2
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_0
    .end sparse-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Q([LR0/r;LS0/c;)[LR0/t;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, LR0/b;->r([LR0/r;)Lz4/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v0

    .line 8
    new-array v2, v2, [LR0/t;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    array-length v5, v0

    .line 13
    if-ge v4, v5, :cond_3

    .line 14
    .line 15
    aget-object v5, v0, v4

    .line 16
    .line 17
    if-eqz v5, :cond_2

    .line 18
    .line 19
    iget-object v8, v5, LR0/r;->b:[I

    .line 20
    .line 21
    array-length v6, v8

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    array-length v6, v8

    .line 26
    const/4 v7, 0x1

    .line 27
    if-ne v6, v7, :cond_1

    .line 28
    .line 29
    new-instance v6, LR0/u;

    .line 30
    .line 31
    aget v7, v8, v3

    .line 32
    .line 33
    iget v8, v5, LR0/r;->c:I

    .line 34
    .line 35
    iget-object v5, v5, LR0/r;->a:Lm0/g0;

    .line 36
    .line 37
    invoke-direct {v6, v7, v8, v5}, LR0/u;-><init>(IILm0/g0;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v1, v4}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    move-object/from16 v21, v6

    .line 46
    .line 47
    check-cast v21, Lz4/H;

    .line 48
    .line 49
    new-instance v23, LR0/b;

    .line 50
    .line 51
    move-object/from16 v6, v23

    .line 52
    .line 53
    const/16 v7, 0x2710

    .line 54
    .line 55
    int-to-long v11, v7

    .line 56
    const/16 v7, 0x61a8

    .line 57
    .line 58
    int-to-long v9, v7

    .line 59
    move-wide v13, v9

    .line 60
    move-wide v15, v9

    .line 61
    sget-object v22, Lp0/f;->a:Lp0/G;

    .line 62
    .line 63
    const/16 v17, 0x4ff

    .line 64
    .line 65
    const/high16 v20, 0x3f400000    # 0.75f

    .line 66
    .line 67
    iget-object v7, v5, LR0/r;->a:Lm0/g0;

    .line 68
    .line 69
    iget v9, v5, LR0/r;->c:I

    .line 70
    .line 71
    const/16 v18, 0x2cf

    .line 72
    .line 73
    const v19, 0x3f333333    # 0.7f

    .line 74
    .line 75
    .line 76
    move-object/from16 v10, p2

    .line 77
    .line 78
    invoke-direct/range {v6 .. v22}, LR0/b;-><init>(Lm0/g0;[IILS0/c;JJJIIFFLz4/H;Lp0/f;)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v6, v23

    .line 82
    .line 83
    :goto_1
    aput-object v6, v2, v4

    .line 84
    .line 85
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    return-object v2
.end method

.method public S(LD0/p;Lm0/d;ILandroid/content/Context;)Landroid/media/AudioTrack;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    iget-boolean v2, p1, LD0/p;->d:Z

    .line 6
    .line 7
    iget v3, p1, LD0/p;->a:I

    .line 8
    .line 9
    iget v4, p1, LD0/p;->c:I

    .line 10
    .line 11
    iget v5, p1, LD0/p;->b:I

    .line 12
    .line 13
    if-lt v0, v1, :cond_2

    .line 14
    .line 15
    invoke-static {v5, v4, v3}, Lp0/M;->q(III)Landroid/media/AudioFormat;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p2, v2}, LU4/b;->T(Lm0/d;Z)Landroid/media/AudioAttributes;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {}, LB0/q;->h()Landroid/media/AudioTrack$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, p2}, LB0/q;->k(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2, v1}, LB0/q;->l(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2}, LB0/q;->i(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget v1, p1, LD0/p;->f:I

    .line 40
    .line 41
    invoke-static {p2, v1}, LB0/q;->j(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, p3}, LB0/q;->B(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/16 p3, 0x1d

    .line 50
    .line 51
    if-lt v0, p3, :cond_0

    .line 52
    .line 53
    iget-boolean p1, p1, LD0/p;->e:Z

    .line 54
    .line 55
    invoke-static {p2, p1}, LD0/a;->k(Landroid/media/AudioTrack$Builder;Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    const/16 p1, 0x22

    .line 59
    .line 60
    if-lt v0, p1, :cond_1

    .line 61
    .line 62
    if-eqz p4, :cond_1

    .line 63
    .line 64
    invoke-static {p2, p4}, LA0/F;->t(Landroid/media/AudioTrack$Builder;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-static {p2}, LB0/q;->m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_2
    new-instance p4, Landroid/media/AudioTrack;

    .line 73
    .line 74
    invoke-static {p2, v2}, LU4/b;->T(Lm0/d;Z)Landroid/media/AudioAttributes;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v5, v4, v3}, Lp0/M;->q(III)Landroid/media/AudioFormat;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v3, p1, LD0/p;->f:I

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    move-object v0, p4

    .line 86
    move v5, p3

    .line 87
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 88
    .line 89
    .line 90
    return-object p4
.end method

.method public W([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    .line 1
    return-object p1
.end method

.method public X(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 0

    .line 1
    return-object p1
.end method

.method public Y(I)I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x6

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x3

    .line 7
    :goto_0
    return p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b0()Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, LB0/q;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_7

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-static {v4}, LB0/q;->A(Landroid/media/AudioDeviceInfo;)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v5, v6, :cond_6

    .line 24
    .line 25
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x5

    .line 30
    if-eq v5, v6, :cond_6

    .line 31
    .line 32
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x6

    .line 37
    if-eq v5, v6, :cond_6

    .line 38
    .line 39
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/16 v6, 0xb

    .line 44
    .line 45
    if-eq v5, v6, :cond_6

    .line 46
    .line 47
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, 0x4

    .line 52
    if-eq v5, v6, :cond_6

    .line 53
    .line 54
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/4 v6, 0x3

    .line 59
    if-ne v5, v6, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v6, 0x1a

    .line 65
    .line 66
    if-lt v5, v6, :cond_1

    .line 67
    .line 68
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/16 v9, 0x16

    .line 73
    .line 74
    if-ne v8, v9, :cond_1

    .line 75
    .line 76
    return v7

    .line 77
    :cond_1
    const/16 v8, 0x1c

    .line 78
    .line 79
    if-lt v5, v8, :cond_2

    .line 80
    .line 81
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    const/16 v9, 0x17

    .line 86
    .line 87
    if-ne v8, v9, :cond_2

    .line 88
    .line 89
    return v7

    .line 90
    :cond_2
    const/16 v8, 0x1f

    .line 91
    .line 92
    if-lt v5, v8, :cond_4

    .line 93
    .line 94
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eq v8, v6, :cond_3

    .line 99
    .line 100
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    const/16 v8, 0x1b

    .line 105
    .line 106
    if-ne v6, v8, :cond_4

    .line 107
    .line 108
    :cond_3
    return v7

    .line 109
    :cond_4
    const/16 v6, 0x21

    .line 110
    .line 111
    if-lt v5, v6, :cond_5

    .line 112
    .line 113
    invoke-static {v4}, LB0/q;->d(Landroid/media/AudioDeviceInfo;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/16 v5, 0x1e

    .line 118
    .line 119
    if-ne v4, v5, :cond_5

    .line 120
    .line 121
    return v7

    .line 122
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    :goto_1
    return v7

    .line 126
    :cond_7
    return v2
.end method

.method public c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Lk/o;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public d0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public e(I)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e0(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f(Landroid/os/Looper;LC0/I;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic g(Lm0/w0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public h([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h0(Lcom/google/android/gms/internal/atv_ads_framework/x0;F)V
    .locals 4

    .line 1
    invoke-static {p1}, LU4/b;->U(Lcom/google/android/gms/internal/atv_ads_framework/x0;)Lq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, v0, Lq/a;->e:F

    .line 22
    .line 23
    cmpl-float v3, p2, v3

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    iget-boolean v3, v0, Lq/a;->f:Z

    .line 28
    .line 29
    if-ne v3, v1, :cond_0

    .line 30
    .line 31
    iget-boolean v3, v0, Lq/a;->g:Z

    .line 32
    .line 33
    if-ne v3, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput p2, v0, Lq/a;->e:F

    .line 37
    .line 38
    iput-boolean v1, v0, Lq/a;->f:Z

    .line 39
    .line 40
    iput-boolean v2, v0, Lq/a;->g:Z

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {v0, p2}, Lq/a;->b(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object p2, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Landroidx/cardview/widget/CardView;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->w(IIII)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object p2, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v0, p2

    .line 67
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    check-cast v0, Lq/a;

    .line 70
    .line 71
    iget v0, v0, Lq/a;->e:F

    .line 72
    .line 73
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    check-cast p2, Lq/a;

    .line 76
    .line 77
    iget p2, p2, Lq/a;->a:F

    .line 78
    .line 79
    iget-object v1, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v0, p2, v1}, Lq/b;->a(FFZ)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    float-to-double v1, v1

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    double-to-int v1, v1

    .line 97
    iget-object v2, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v0, p2, v2}, Lq/b;->b(FFZ)F

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    float-to-double v2, p2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    double-to-int p2, v2

    .line 115
    invoke-virtual {p1, v1, p2, v1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->w(IIII)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void
.end method

.method public synthetic i(LU0/Q;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i0(Lm0/t;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "application/id3"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "application/x-emsg"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "application/x-scte35"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "application/x-icy"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string v0, "application/vnd.dvb.ait"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 47
    :goto_1
    return p1
.end method

.method public j(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    .line 1
    return-object p1
.end method

.method public synthetic k()V
    .locals 0

    .line 1
    return-void
.end method

.method public l(LG0/o;Lm0/t;)LG0/l;
    .locals 2

    .line 1
    iget-object p1, p2, Lm0/t;->s:Lm0/n;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    new-instance p1, LG0/t;

    .line 8
    .line 9
    new-instance p2, LG0/k;

    .line 10
    .line 11
    new-instance v0, LG0/C;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x1771

    .line 17
    .line 18
    invoke-direct {p2, v1, v0}, LG0/k;-><init>(ILjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p2}, LG0/t;-><init>(LG0/k;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public m(Lm0/t;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lm0/t;->s:Lm0/n;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public synthetic n(LG0/o;Lm0/t;)LG0/q;
    .locals 0

    .line 1
    sget-object p1, LG0/q;->c:LN/i;

    .line 2
    .line 3
    return-object p1
.end method

.method public next()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public o(Lk/o;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public p()V
    .locals 4

    .line 1
    sget-object v0, LT0/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LT0/c;->b:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    sget-boolean v2, LT0/c;->c:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :catchall_1
    move-exception v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    invoke-static {}, LT0/c;->a()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    sput-wide v2, LT0/c;->d:J

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    sput-boolean v2, LT0/c;->c:Z

    .line 31
    .line 32
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 33
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 34
    return-void

    .line 35
    :catchall_2
    move-exception v2

    .line 36
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 37
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 38
    :goto_0
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 39
    :try_start_a
    throw v2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 41
    throw v1
.end method

.method public synthetic prepare()V
    .locals 0

    .line 1
    return-void
.end method

.method public q()J
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public synthetic r()V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic release()V
    .locals 0

    .line 1
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    const-string p3, "secure-playback"

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "video/avc"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public t()J
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public u(LT1/d;)LT1/f;
    .locals 7

    .line 1
    new-instance v6, LU1/h;

    .line 2
    .line 3
    iget-object v2, p1, LT1/d;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p1, LT1/d;->c:LT1/c;

    .line 6
    .line 7
    iget-object v1, p1, LT1/d;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget-boolean v4, p1, LT1/d;->d:Z

    .line 10
    .line 11
    iget-boolean v5, p1, LT1/d;->e:Z

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, LU1/h;-><init>(Landroid/content/Context;Ljava/lang/String;LT1/c;ZZ)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public w()LW0/F;
    .locals 3

    .line 1
    new-instance v0, LW0/x;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, LW0/x;-><init>(J)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public synthetic x()V
    .locals 0

    .line 1
    return-void
.end method

.method public y(Ll/x;)LK0/l;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, LU4/b;->O(Ll/x;)Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "configureCodec"

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Ll/x;->J:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    check-cast v2, Landroid/view/Surface;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p1, Ll/x;->G:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, LK0/o;

    .line 21
    .line 22
    iget-boolean v2, v2, LK0/o;->j:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v3, 0x23

    .line 29
    .line 30
    if-lt v2, v3, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v3, p1, Ll/x;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Landroid/media/MediaFormat;

    .line 43
    .line 44
    check-cast v1, Landroid/view/Surface;

    .line 45
    .line 46
    iget-object v4, p1, Ll/x;->K:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Landroid/media/MediaCrypto;

    .line 49
    .line 50
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    const-string v1, "startCodec"

    .line 57
    .line 58
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 65
    .line 66
    .line 67
    new-instance v1, LK0/A;

    .line 68
    .line 69
    iget-object p1, p1, Ll/x;->L:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, LK0/i;

    .line 72
    .line 73
    invoke-direct {v1, v0, p1}, LK0/A;-><init>(Landroid/media/MediaCodec;LK0/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :goto_1
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 80
    .line 81
    .line 82
    :cond_1
    throw p1
.end method

.method public synthetic z()V
    .locals 0

    .line 1
    return-void
.end method

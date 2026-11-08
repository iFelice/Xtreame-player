.class public final LA0/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/P;


# instance fields
.field public final a:I

.field public final b:I

.field public c:F

.field public final d:I

.field public final e:I

.field public final f:Z

.field public g:F

.field public h:F

.field public i:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LA0/S;->a:I

    .line 5
    .line 6
    iput p2, p0, LA0/S;->b:I

    .line 7
    .line 8
    const/high16 p1, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput p1, p0, LA0/S;->c:F

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iput p2, p0, LA0/S;->d:I

    .line 14
    .line 15
    const/16 v0, 0x2601

    .line 16
    .line 17
    iput v0, p0, LA0/S;->e:I

    .line 18
    .line 19
    iput-boolean p2, p0, LA0/S;->f:Z

    .line 20
    .line 21
    iput p1, p0, LA0/S;->g:F

    .line 22
    .line 23
    iput p1, p0, LA0/S;->h:F

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, LA0/S;->i:Landroid/graphics/Matrix;

    .line 31
    .line 32
    return-void
.end method

.method public static f(II)LA0/S;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v4, "width "

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, " must be positive"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "height "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    new-instance v0, LA0/S;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1}, LA0/S;-><init>(II)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, LA0/S;->i:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const-string v1, "configure must be called first"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final synthetic b(J)[F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LA0/O;->a(LA0/P;J)[F

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, LA0/S;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final d(II)Lp0/F;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    const-string v3, "inputWidth must be positive"

    .line 9
    .line 10
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    if-lez p2, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_1
    const-string v2, "inputHeight must be positive"

    .line 17
    .line 18
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, LA0/S;->i:Landroid/graphics/Matrix;

    .line 27
    .line 28
    int-to-float v2, p1

    .line 29
    iput v2, p0, LA0/S;->g:F

    .line 30
    .line 31
    int-to-float v3, p2

    .line 32
    iput v3, p0, LA0/S;->h:F

    .line 33
    .line 34
    iget v4, p0, LA0/S;->b:I

    .line 35
    .line 36
    iget v5, p0, LA0/S;->a:I

    .line 37
    .line 38
    const/4 v6, -0x1

    .line 39
    if-eq v5, v6, :cond_2

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    int-to-float v7, v5

    .line 44
    int-to-float v8, v4

    .line 45
    div-float/2addr v7, v8

    .line 46
    iput v7, p0, LA0/S;->c:F

    .line 47
    .line 48
    :cond_2
    iget v7, p0, LA0/S;->c:F

    .line 49
    .line 50
    const/high16 v8, -0x40800000    # -1.0f

    .line 51
    .line 52
    cmpl-float v8, v7, v8

    .line 53
    .line 54
    if-eqz v8, :cond_8

    .line 55
    .line 56
    div-float v8, v2, v3

    .line 57
    .line 58
    const/high16 v9, 0x3f800000    # 1.0f

    .line 59
    .line 60
    iget v10, p0, LA0/S;->d:I

    .line 61
    .line 62
    if-nez v10, :cond_4

    .line 63
    .line 64
    cmpl-float v1, v7, v8

    .line 65
    .line 66
    if-lez v1, :cond_3

    .line 67
    .line 68
    div-float/2addr v8, v7

    .line 69
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 70
    .line 71
    .line 72
    iget v0, p0, LA0/S;->h:F

    .line 73
    .line 74
    iget v1, p0, LA0/S;->c:F

    .line 75
    .line 76
    mul-float v0, v0, v1

    .line 77
    .line 78
    iput v0, p0, LA0/S;->g:F

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    div-float/2addr v7, v8

    .line 82
    invoke-virtual {v0, v9, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, LA0/S;->g:F

    .line 86
    .line 87
    iget v1, p0, LA0/S;->c:F

    .line 88
    .line 89
    div-float/2addr v0, v1

    .line 90
    iput v0, p0, LA0/S;->h:F

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    if-ne v10, v1, :cond_6

    .line 94
    .line 95
    cmpl-float v1, v7, v8

    .line 96
    .line 97
    if-lez v1, :cond_5

    .line 98
    .line 99
    div-float/2addr v7, v8

    .line 100
    invoke-virtual {v0, v9, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 101
    .line 102
    .line 103
    iget v0, p0, LA0/S;->g:F

    .line 104
    .line 105
    iget v1, p0, LA0/S;->c:F

    .line 106
    .line 107
    div-float/2addr v0, v1

    .line 108
    iput v0, p0, LA0/S;->h:F

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    div-float/2addr v8, v7

    .line 112
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 113
    .line 114
    .line 115
    iget v0, p0, LA0/S;->h:F

    .line 116
    .line 117
    iget v1, p0, LA0/S;->c:F

    .line 118
    .line 119
    mul-float v0, v0, v1

    .line 120
    .line 121
    iput v0, p0, LA0/S;->g:F

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    const/4 v0, 0x2

    .line 125
    if-ne v10, v0, :cond_8

    .line 126
    .line 127
    cmpl-float v0, v7, v8

    .line 128
    .line 129
    if-lez v0, :cond_7

    .line 130
    .line 131
    mul-float v3, v3, v7

    .line 132
    .line 133
    iput v3, p0, LA0/S;->g:F

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    div-float/2addr v2, v7

    .line 137
    iput v2, p0, LA0/S;->h:F

    .line 138
    .line 139
    :cond_8
    :goto_1
    if-eq v4, v6, :cond_b

    .line 140
    .line 141
    if-eq v5, v6, :cond_9

    .line 142
    .line 143
    int-to-float p1, v5

    .line 144
    iput p1, p0, LA0/S;->g:F

    .line 145
    .line 146
    int-to-float p1, v4

    .line 147
    iput p1, p0, LA0/S;->h:F

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_9
    iget-boolean v0, p0, LA0/S;->f:Z

    .line 151
    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    if-le p2, p1, :cond_a

    .line 155
    .line 156
    int-to-float p1, v4

    .line 157
    iget p2, p0, LA0/S;->h:F

    .line 158
    .line 159
    mul-float p2, p2, p1

    .line 160
    .line 161
    iget v0, p0, LA0/S;->g:F

    .line 162
    .line 163
    div-float/2addr p2, v0

    .line 164
    iput p2, p0, LA0/S;->h:F

    .line 165
    .line 166
    iput p1, p0, LA0/S;->g:F

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_a
    int-to-float p1, v4

    .line 170
    iget p2, p0, LA0/S;->g:F

    .line 171
    .line 172
    mul-float p2, p2, p1

    .line 173
    .line 174
    iget v0, p0, LA0/S;->h:F

    .line 175
    .line 176
    div-float/2addr p2, v0

    .line 177
    iput p2, p0, LA0/S;->g:F

    .line 178
    .line 179
    iput p1, p0, LA0/S;->h:F

    .line 180
    .line 181
    :cond_b
    :goto_2
    new-instance p1, Lp0/F;

    .line 182
    .line 183
    iget p2, p0, LA0/S;->g:F

    .line 184
    .line 185
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    iget v0, p0, LA0/S;->h:F

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-direct {p1, p2, v0}, Lp0/F;-><init>(II)V

    .line 196
    .line 197
    .line 198
    return-object p1
.end method

.method public final bridge synthetic e(Landroid/content/Context;Z)LA0/K;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LA0/S;->g(Landroid/content/Context;Z)LA0/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final g(Landroid/content/Context;Z)LA0/m;
    .locals 2

    .line 1
    invoke-static {p0}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lz4/d0;->K:Lz4/d0;

    .line 6
    .line 7
    invoke-static {p1, v0, v1, p2}, LA0/m;->j(Landroid/content/Context;Lz4/d0;Lz4/d0;Z)LA0/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

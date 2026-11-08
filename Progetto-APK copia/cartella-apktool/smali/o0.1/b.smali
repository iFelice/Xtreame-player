.class public final Lo0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/text/Layout$Alignment;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lo0/b;

    .line 2
    .line 3
    const/16 v17, 0x0

    .line 4
    .line 5
    const/16 v18, 0x0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v3, v2

    .line 11
    const/4 v4, 0x0

    .line 12
    const v13, -0x800001

    .line 13
    .line 14
    .line 15
    move v12, v13

    .line 16
    move v8, v13

    .line 17
    move v5, v13

    .line 18
    move v11, v13

    .line 19
    const/high16 v16, -0x80000000

    .line 20
    .line 21
    move/from16 v6, v16

    .line 22
    .line 23
    move/from16 v7, v16

    .line 24
    .line 25
    move/from16 v10, v16

    .line 26
    .line 27
    move/from16 v9, v16

    .line 28
    .line 29
    const/4 v14, 0x0

    .line 30
    const/high16 v15, -0x1000000

    .line 31
    .line 32
    invoke-direct/range {v0 .. v18}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/16 v1, 0x24

    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lo0/b;->s:Ljava/lang/String;

    .line 45
    .line 46
    const/16 v0, 0x11

    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lo0/b;->t:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lo0/b;->u:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lo0/b;->v:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lo0/b;->w:Ljava/lang/String;

    .line 74
    .line 75
    const/16 v0, 0x12

    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lo0/b;->x:Ljava/lang/String;

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lo0/b;->y:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v0, 0x5

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lo0/b;->z:Ljava/lang/String;

    .line 96
    .line 97
    const/4 v0, 0x6

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lo0/b;->A:Ljava/lang/String;

    .line 103
    .line 104
    const/4 v0, 0x7

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lo0/b;->B:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lo0/b;->C:Ljava/lang/String;

    .line 118
    .line 119
    const/16 v0, 0x9

    .line 120
    .line 121
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lo0/b;->D:Ljava/lang/String;

    .line 126
    .line 127
    const/16 v0, 0xa

    .line 128
    .line 129
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lo0/b;->E:Ljava/lang/String;

    .line 134
    .line 135
    const/16 v0, 0xb

    .line 136
    .line 137
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lo0/b;->F:Ljava/lang/String;

    .line 142
    .line 143
    const/16 v0, 0xc

    .line 144
    .line 145
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lo0/b;->G:Ljava/lang/String;

    .line 150
    .line 151
    const/16 v0, 0xd

    .line 152
    .line 153
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lo0/b;->H:Ljava/lang/String;

    .line 158
    .line 159
    const/16 v0, 0xe

    .line 160
    .line 161
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Lo0/b;->I:Ljava/lang/String;

    .line 166
    .line 167
    const/16 v0, 0xf

    .line 168
    .line 169
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sput-object v0, Lo0/b;->J:Ljava/lang/String;

    .line 174
    .line 175
    const/16 v0, 0x10

    .line 176
    .line 177
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sput-object v0, Lo0/b;->K:Ljava/lang/String;

    .line 182
    .line 183
    const/16 v0, 0x13

    .line 184
    .line 185
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    sput-object v0, Lo0/b;->L:Ljava/lang/String;

    .line 190
    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez v2, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 19
    .line 20
    .line 21
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 30
    .line 31
    :goto_2
    move-object v1, p2

    .line 32
    goto :goto_3

    .line 33
    :cond_2
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_3
    iput-object v1, v0, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 47
    .line 48
    move-object v1, p3

    .line 49
    iput-object v1, v0, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 50
    .line 51
    iput-object v2, v0, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    move v1, p5

    .line 54
    iput v1, v0, Lo0/b;->e:F

    .line 55
    .line 56
    move v1, p6

    .line 57
    iput v1, v0, Lo0/b;->f:I

    .line 58
    .line 59
    move v1, p7

    .line 60
    iput v1, v0, Lo0/b;->g:I

    .line 61
    .line 62
    move v1, p8

    .line 63
    iput v1, v0, Lo0/b;->h:F

    .line 64
    .line 65
    move v1, p9

    .line 66
    iput v1, v0, Lo0/b;->i:I

    .line 67
    .line 68
    move/from16 v1, p12

    .line 69
    .line 70
    iput v1, v0, Lo0/b;->j:F

    .line 71
    .line 72
    move/from16 v1, p13

    .line 73
    .line 74
    iput v1, v0, Lo0/b;->k:F

    .line 75
    .line 76
    move/from16 v1, p14

    .line 77
    .line 78
    iput-boolean v1, v0, Lo0/b;->l:Z

    .line 79
    .line 80
    move/from16 v1, p15

    .line 81
    .line 82
    iput v1, v0, Lo0/b;->m:I

    .line 83
    .line 84
    move v1, p10

    .line 85
    iput v1, v0, Lo0/b;->n:I

    .line 86
    .line 87
    move v1, p11

    .line 88
    iput v1, v0, Lo0/b;->o:F

    .line 89
    .line 90
    move/from16 v1, p16

    .line 91
    .line 92
    iput v1, v0, Lo0/b;->p:I

    .line 93
    .line 94
    move/from16 v1, p17

    .line 95
    .line 96
    iput v1, v0, Lo0/b;->q:F

    .line 97
    .line 98
    move/from16 v1, p18

    .line 99
    .line 100
    iput v1, v0, Lo0/b;->r:I

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final a()Lo0/a;
    .locals 2

    .line 1
    new-instance v0, Lo0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object v1, v0, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object v1, p0, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object v1, v0, Lo0/a;->b:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iget-object v1, p0, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 15
    .line 16
    iput-object v1, v0, Lo0/a;->c:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    iget-object v1, p0, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    iput-object v1, v0, Lo0/a;->d:Landroid/text/Layout$Alignment;

    .line 21
    .line 22
    iget v1, p0, Lo0/b;->e:F

    .line 23
    .line 24
    iput v1, v0, Lo0/a;->e:F

    .line 25
    .line 26
    iget v1, p0, Lo0/b;->f:I

    .line 27
    .line 28
    iput v1, v0, Lo0/a;->f:I

    .line 29
    .line 30
    iget v1, p0, Lo0/b;->g:I

    .line 31
    .line 32
    iput v1, v0, Lo0/a;->g:I

    .line 33
    .line 34
    iget v1, p0, Lo0/b;->h:F

    .line 35
    .line 36
    iput v1, v0, Lo0/a;->h:F

    .line 37
    .line 38
    iget v1, p0, Lo0/b;->i:I

    .line 39
    .line 40
    iput v1, v0, Lo0/a;->i:I

    .line 41
    .line 42
    iget v1, p0, Lo0/b;->n:I

    .line 43
    .line 44
    iput v1, v0, Lo0/a;->j:I

    .line 45
    .line 46
    iget v1, p0, Lo0/b;->o:F

    .line 47
    .line 48
    iput v1, v0, Lo0/a;->k:F

    .line 49
    .line 50
    iget v1, p0, Lo0/b;->j:F

    .line 51
    .line 52
    iput v1, v0, Lo0/a;->l:F

    .line 53
    .line 54
    iget v1, p0, Lo0/b;->k:F

    .line 55
    .line 56
    iput v1, v0, Lo0/a;->m:F

    .line 57
    .line 58
    iget-boolean v1, p0, Lo0/b;->l:Z

    .line 59
    .line 60
    iput-boolean v1, v0, Lo0/a;->n:Z

    .line 61
    .line 62
    iget v1, p0, Lo0/b;->m:I

    .line 63
    .line 64
    iput v1, v0, Lo0/a;->o:I

    .line 65
    .line 66
    iget v1, p0, Lo0/b;->p:I

    .line 67
    .line 68
    iput v1, v0, Lo0/a;->p:I

    .line 69
    .line 70
    iget v1, p0, Lo0/b;->q:F

    .line 71
    .line 72
    iput v1, v0, Lo0/a;->q:F

    .line 73
    .line 74
    iget v1, p0, Lo0/b;->r:I

    .line 75
    .line 76
    iput v1, v0, Lo0/a;->r:I

    .line 77
    .line 78
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lo0/b;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lo0/b;

    .line 19
    .line 20
    iget-object v2, p0, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object v3, p1, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 31
    .line 32
    iget-object v3, p1, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 33
    .line 34
    if-ne v2, v3, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 37
    .line 38
    iget-object v3, p1, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 39
    .line 40
    if-ne v2, v3, :cond_3

    .line 41
    .line 42
    iget-object v2, p1, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    iget-object v3, p0, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    :goto_0
    iget v2, p0, Lo0/b;->e:F

    .line 60
    .line 61
    iget v3, p1, Lo0/b;->e:F

    .line 62
    .line 63
    cmpl-float v2, v2, v3

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    iget v2, p0, Lo0/b;->f:I

    .line 68
    .line 69
    iget v3, p1, Lo0/b;->f:I

    .line 70
    .line 71
    if-ne v2, v3, :cond_3

    .line 72
    .line 73
    iget v2, p0, Lo0/b;->g:I

    .line 74
    .line 75
    iget v3, p1, Lo0/b;->g:I

    .line 76
    .line 77
    if-ne v2, v3, :cond_3

    .line 78
    .line 79
    iget v2, p0, Lo0/b;->h:F

    .line 80
    .line 81
    iget v3, p1, Lo0/b;->h:F

    .line 82
    .line 83
    cmpl-float v2, v2, v3

    .line 84
    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    iget v2, p0, Lo0/b;->i:I

    .line 88
    .line 89
    iget v3, p1, Lo0/b;->i:I

    .line 90
    .line 91
    if-ne v2, v3, :cond_3

    .line 92
    .line 93
    iget v2, p0, Lo0/b;->j:F

    .line 94
    .line 95
    iget v3, p1, Lo0/b;->j:F

    .line 96
    .line 97
    cmpl-float v2, v2, v3

    .line 98
    .line 99
    if-nez v2, :cond_3

    .line 100
    .line 101
    iget v2, p0, Lo0/b;->k:F

    .line 102
    .line 103
    iget v3, p1, Lo0/b;->k:F

    .line 104
    .line 105
    cmpl-float v2, v2, v3

    .line 106
    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    iget-boolean v2, p0, Lo0/b;->l:Z

    .line 110
    .line 111
    iget-boolean v3, p1, Lo0/b;->l:Z

    .line 112
    .line 113
    if-ne v2, v3, :cond_3

    .line 114
    .line 115
    iget v2, p0, Lo0/b;->m:I

    .line 116
    .line 117
    iget v3, p1, Lo0/b;->m:I

    .line 118
    .line 119
    if-ne v2, v3, :cond_3

    .line 120
    .line 121
    iget v2, p0, Lo0/b;->n:I

    .line 122
    .line 123
    iget v3, p1, Lo0/b;->n:I

    .line 124
    .line 125
    if-ne v2, v3, :cond_3

    .line 126
    .line 127
    iget v2, p0, Lo0/b;->o:F

    .line 128
    .line 129
    iget v3, p1, Lo0/b;->o:F

    .line 130
    .line 131
    cmpl-float v2, v2, v3

    .line 132
    .line 133
    if-nez v2, :cond_3

    .line 134
    .line 135
    iget v2, p0, Lo0/b;->p:I

    .line 136
    .line 137
    iget v3, p1, Lo0/b;->p:I

    .line 138
    .line 139
    if-ne v2, v3, :cond_3

    .line 140
    .line 141
    iget v2, p0, Lo0/b;->q:F

    .line 142
    .line 143
    iget v3, p1, Lo0/b;->q:F

    .line 144
    .line 145
    cmpl-float v2, v2, v3

    .line 146
    .line 147
    if-nez v2, :cond_3

    .line 148
    .line 149
    iget v2, p0, Lo0/b;->r:I

    .line 150
    .line 151
    iget p1, p1, Lo0/b;->r:I

    .line 152
    .line 153
    if-ne v2, p1, :cond_3

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    const/4 v0, 0x0

    .line 157
    :goto_1
    return v0

    .line 158
    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo0/b;->e:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, v0, Lo0/b;->f:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, v0, Lo0/b;->g:I

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v4, v0, Lo0/b;->h:F

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v5, v0, Lo0/b;->i:I

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget v6, v0, Lo0/b;->j:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget v7, v0, Lo0/b;->k:F

    .line 40
    .line 41
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-boolean v8, v0, Lo0/b;->l:Z

    .line 46
    .line 47
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget v9, v0, Lo0/b;->m:I

    .line 52
    .line 53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget v10, v0, Lo0/b;->n:I

    .line 58
    .line 59
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iget v11, v0, Lo0/b;->o:F

    .line 64
    .line 65
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget v12, v0, Lo0/b;->p:I

    .line 70
    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget v13, v0, Lo0/b;->q:F

    .line 76
    .line 77
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget v14, v0, Lo0/b;->r:I

    .line 82
    .line 83
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget-object v15, v0, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 88
    .line 89
    move-object/from16 v16, v14

    .line 90
    .line 91
    iget-object v14, v0, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 92
    .line 93
    move-object/from16 v17, v13

    .line 94
    .line 95
    iget-object v13, v0, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 96
    .line 97
    move-object/from16 v18, v12

    .line 98
    .line 99
    iget-object v12, v0, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    const/16 v0, 0x12

    .line 102
    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    const/16 v19, 0x0

    .line 106
    .line 107
    aput-object v15, v0, v19

    .line 108
    .line 109
    const/4 v15, 0x1

    .line 110
    aput-object v14, v0, v15

    .line 111
    .line 112
    const/4 v14, 0x2

    .line 113
    aput-object v13, v0, v14

    .line 114
    .line 115
    const/4 v13, 0x3

    .line 116
    aput-object v12, v0, v13

    .line 117
    .line 118
    const/4 v12, 0x4

    .line 119
    aput-object v1, v0, v12

    .line 120
    .line 121
    const/4 v1, 0x5

    .line 122
    aput-object v2, v0, v1

    .line 123
    .line 124
    const/4 v1, 0x6

    .line 125
    aput-object v3, v0, v1

    .line 126
    .line 127
    const/4 v1, 0x7

    .line 128
    aput-object v4, v0, v1

    .line 129
    .line 130
    const/16 v1, 0x8

    .line 131
    .line 132
    aput-object v5, v0, v1

    .line 133
    .line 134
    const/16 v1, 0x9

    .line 135
    .line 136
    aput-object v6, v0, v1

    .line 137
    .line 138
    const/16 v1, 0xa

    .line 139
    .line 140
    aput-object v7, v0, v1

    .line 141
    .line 142
    const/16 v1, 0xb

    .line 143
    .line 144
    aput-object v8, v0, v1

    .line 145
    .line 146
    const/16 v1, 0xc

    .line 147
    .line 148
    aput-object v9, v0, v1

    .line 149
    .line 150
    const/16 v1, 0xd

    .line 151
    .line 152
    aput-object v10, v0, v1

    .line 153
    .line 154
    const/16 v1, 0xe

    .line 155
    .line 156
    aput-object v11, v0, v1

    .line 157
    .line 158
    const/16 v1, 0xf

    .line 159
    .line 160
    aput-object v18, v0, v1

    .line 161
    .line 162
    const/16 v1, 0x10

    .line 163
    .line 164
    aput-object v17, v0, v1

    .line 165
    .line 166
    const/16 v1, 0x11

    .line 167
    .line 168
    aput-object v16, v0, v1

    .line 169
    .line 170
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    return v0
.end method

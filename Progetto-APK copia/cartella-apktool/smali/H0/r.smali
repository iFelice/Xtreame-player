.class public final LH0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/L;


# static fields
.field public static final g:Lm0/t;

.field public static final h:Lm0/t;


# instance fields
.field public final a:Lf1/b;

.field public final b:LW0/L;

.field public final c:Lm0/t;

.field public d:Lm0/t;

.field public e:[B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm0/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "application/id3"

    .line 7
    .line 8
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, LH0/r;->g:Lm0/t;

    .line 19
    .line 20
    new-instance v0, Lm0/s;

    .line 21
    .line 22
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "application/x-emsg"

    .line 26
    .line 27
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, LH0/r;->h:Lm0/t;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(LW0/L;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf1/b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lf1/b;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LH0/r;->a:Lf1/b;

    .line 11
    .line 12
    iput-object p1, p0, LH0/r;->b:LW0/L;

    .line 13
    .line 14
    if-eq p2, v1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    sget-object p1, LH0/r;->h:Lm0/t;

    .line 20
    .line 21
    iput-object p1, p0, LH0/r;->c:Lm0/t;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Unknown metadataType: "

    .line 27
    .line 28
    invoke-static {v0, p2}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    sget-object p1, LH0/r;->g:Lm0/t;

    .line 37
    .line 38
    iput-object p1, p0, LH0/r;->c:Lm0/t;

    .line 39
    .line 40
    :goto_0
    const/4 p1, 0x0

    .line 41
    new-array p2, p1, [B

    .line 42
    .line 43
    iput-object p2, p0, LH0/r;->e:[B

    .line 44
    .line 45
    iput p1, p0, LH0/r;->f:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(IILp0/E;)V
    .locals 2

    .line 1
    iget p2, p0, LH0/r;->f:I

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    iget-object v0, p0, LH0/r;->e:[B

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    if-ge v1, p2, :cond_0

    .line 8
    .line 9
    div-int/lit8 v1, p2, 0x2

    .line 10
    .line 11
    add-int/2addr v1, p2

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, LH0/r;->e:[B

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, LH0/r;->e:[B

    .line 19
    .line 20
    iget v0, p0, LH0/r;->f:I

    .line 21
    .line 22
    invoke-virtual {p3, v0, p2, p1}, Lp0/E;->j(I[BI)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, LH0/r;->f:I

    .line 26
    .line 27
    add-int/2addr p2, p1

    .line 28
    iput p2, p0, LH0/r;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final b(Lm0/t;)V
    .locals 1

    .line 1
    iput-object p1, p0, LH0/r;->d:Lm0/t;

    .line 2
    .line 3
    iget-object p1, p0, LH0/r;->b:LW0/L;

    .line 4
    .line 5
    iget-object v0, p0, LH0/r;->c:Lm0/t;

    .line 6
    .line 7
    invoke-interface {p1, v0}, LW0/L;->b(Lm0/t;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Lm0/j;IZ)I
    .locals 3

    .line 1
    iget v0, p0, LH0/r;->f:I

    .line 2
    .line 3
    add-int/2addr v0, p2

    .line 4
    iget-object v1, p0, LH0/r;->e:[B

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    div-int/lit8 v2, v0, 0x2

    .line 10
    .line 11
    add-int/2addr v2, v0

    .line 12
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, LH0/r;->e:[B

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, LH0/r;->e:[B

    .line 19
    .line 20
    iget v1, p0, LH0/r;->f:I

    .line 21
    .line 22
    invoke-interface {p1, v0, v1, p2}, Lm0/j;->q([BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x1

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    return p2

    .line 32
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    iget p2, p0, LH0/r;->f:I

    .line 39
    .line 40
    add-int/2addr p2, p1

    .line 41
    iput p2, p0, LH0/r;->f:I

    .line 42
    .line 43
    return p1
.end method

.method public final d(JIIILW0/K;)V
    .locals 9

    .line 1
    iget-object v0, p0, LH0/r;->d:Lm0/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p0, LH0/r;->f:I

    .line 7
    .line 8
    sub-int/2addr v0, p5

    .line 9
    sub-int p4, v0, p4

    .line 10
    .line 11
    iget-object v1, p0, LH0/r;->e:[B

    .line 12
    .line 13
    invoke-static {v1, p4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    new-instance v1, Lp0/E;

    .line 18
    .line 19
    invoke-direct {v1, p4}, Lp0/E;-><init>([B)V

    .line 20
    .line 21
    .line 22
    iget-object p4, p0, LH0/r;->e:[B

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p4, v0, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput p5, p0, LH0/r;->f:I

    .line 29
    .line 30
    iget-object p4, p0, LH0/r;->d:Lm0/t;

    .line 31
    .line 32
    iget-object p4, p4, Lm0/t;->o:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p5, p0, LH0/r;->c:Lm0/t;

    .line 35
    .line 36
    iget-object v0, p5, Lm0/t;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-eqz p4, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p4, p0, LH0/r;->d:Lm0/t;

    .line 46
    .line 47
    iget-object p4, p4, Lm0/t;->o:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "application/x-emsg"

    .line 50
    .line 51
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    const-string v0, "HlsSampleStreamWrapper"

    .line 56
    .line 57
    if-eqz p4, :cond_2

    .line 58
    .line 59
    iget-object p4, p0, LH0/r;->a:Lf1/b;

    .line 60
    .line 61
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lf1/b;->u(Lp0/E;)Lg1/a;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-virtual {p4}, Lg1/a;->getWrappedMetadataFormat()Lm0/t;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object p5, p5, Lm0/t;->o:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    iget-object v1, v1, Lm0/t;->o:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    new-instance v1, Lp0/E;

    .line 85
    .line 86
    invoke-virtual {p4}, Lg1/a;->getWrappedMetadataBytes()[B

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, p4}, Lp0/E;-><init>([B)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {v1}, Lp0/E;->a()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    iget-object p4, p0, LH0/r;->b:LW0/L;

    .line 101
    .line 102
    invoke-interface {p4, v6, v1}, LW0/L;->e(ILp0/E;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, LH0/r;->b:LW0/L;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    move-wide v3, p1

    .line 109
    move v5, p3

    .line 110
    move-object v8, p6

    .line 111
    invoke-interface/range {v2 .. v8}, LW0/L;->d(JIIILW0/K;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    invoke-virtual {p4}, Lg1/a;->getWrappedMetadataFormat()Lm0/t;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p3, "Ignoring EMSG. Expected it to contain wrapped "

    .line 122
    .line 123
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p3, " but actual wrapped format: "

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v0, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p2, "Ignoring sample for unsupported format: "

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, LH0/r;->d:Lm0/t;

    .line 153
    .line 154
    iget-object p2, p2, Lm0/t;->o:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v0, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final synthetic e(ILp0/E;)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, LA0/O;->b(LW0/L;Lp0/E;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lm0/j;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LH0/r;->c(Lm0/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

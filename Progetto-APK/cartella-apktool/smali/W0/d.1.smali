.class public final LW0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, LW0/d;->a:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, LW0/d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IIII)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LW0/d;->a:I

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v1 .. v6}, LW0/d;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 17
    iput p5, p0, LW0/d;->a:I

    .line 18
    iput p1, p0, LW0/d;->b:I

    const/4 p1, 0x2

    .line 19
    iput p1, p0, LW0/d;->d:I

    .line 20
    iput p2, p0, LW0/d;->c:I

    .line 21
    iput p3, p0, LW0/d;->e:I

    .line 22
    iput p4, p0, LW0/d;->f:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 3
    iput p5, p0, LW0/d;->a:I

    const/4 p6, 0x3

    if-eq p5, p6, :cond_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, LW0/d;->b:I

    .line 6
    iput p4, p0, LW0/d;->c:I

    .line 7
    iput p2, p0, LW0/d;->d:I

    .line 8
    iput p3, p0, LW0/d;->e:I

    add-int/2addr p2, p3

    .line 9
    iput p2, p0, LW0/d;->f:I

    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, -0x1

    .line 11
    iput p5, p0, LW0/d;->f:I

    .line 12
    iput p1, p0, LW0/d;->b:I

    .line 13
    iput p2, p0, LW0/d;->c:I

    .line 14
    iput p3, p0, LW0/d;->d:I

    .line 15
    iput p4, p0, LW0/d;->e:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    iget v0, p0, LW0/d;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x7

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v1, p0, LW0/d;->e:I

    .line 12
    .line 13
    iget v6, p0, LW0/d;->c:I

    .line 14
    .line 15
    if-le v1, v6, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-ne v1, v6, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x4

    .line 24
    :goto_0
    and-int/2addr v1, v0

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    return v5

    .line 28
    :cond_2
    and-int/lit8 v1, v0, 0x70

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    iget v1, p0, LW0/d;->e:I

    .line 33
    .line 34
    iget v6, p0, LW0/d;->d:I

    .line 35
    .line 36
    if-le v1, v6, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    if-ne v1, v6, :cond_4

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    const/4 v1, 0x4

    .line 45
    :goto_1
    shl-int/2addr v1, v3

    .line 46
    and-int/2addr v1, v0

    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    return v5

    .line 50
    :cond_5
    and-int/lit16 v1, v0, 0x700

    .line 51
    .line 52
    if-eqz v1, :cond_8

    .line 53
    .line 54
    iget v1, p0, LW0/d;->f:I

    .line 55
    .line 56
    iget v6, p0, LW0/d;->c:I

    .line 57
    .line 58
    if-le v1, v6, :cond_6

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_6
    if-ne v1, v6, :cond_7

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    goto :goto_2

    .line 66
    :cond_7
    const/4 v1, 0x4

    .line 67
    :goto_2
    shl-int/lit8 v1, v1, 0x8

    .line 68
    .line 69
    and-int/2addr v1, v0

    .line 70
    if-nez v1, :cond_8

    .line 71
    .line 72
    return v5

    .line 73
    :cond_8
    and-int/lit16 v1, v0, 0x7000

    .line 74
    .line 75
    if-eqz v1, :cond_b

    .line 76
    .line 77
    iget v1, p0, LW0/d;->f:I

    .line 78
    .line 79
    iget v6, p0, LW0/d;->d:I

    .line 80
    .line 81
    if-le v1, v6, :cond_9

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_9
    if-ne v1, v6, :cond_a

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_a
    const/4 v2, 0x4

    .line 89
    :goto_3
    shl-int/lit8 v1, v2, 0xc

    .line 90
    .line 91
    and-int/2addr v0, v1

    .line 92
    if-nez v0, :cond_b

    .line 93
    .line 94
    return v5

    .line 95
    :cond_b
    return v4
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget v0, p0, LW0/d;->d:I

    .line 5
    .line 6
    rem-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    mul-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, LW0/d;->e:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x1e

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    iget v1, p0, LW0/d;->d:I

    .line 8
    .line 9
    div-int/lit8 v1, v1, 0x3

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p0, LW0/d;->f:I

    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, LW0/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, LW0/d;->f:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "|"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, LW0/d;->e:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

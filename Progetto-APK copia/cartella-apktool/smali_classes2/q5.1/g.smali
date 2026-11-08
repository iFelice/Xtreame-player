.class public abstract Lq5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lq5/g;->a:I

    .line 5
    .line 6
    iput p2, p0, Lq5/g;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract b(I[B)[B
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public d()Lq5/g;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "This luminance source does not support rotation by 90 degrees."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lq5/g;->a:I

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    add-int/lit8 v3, v0, 0x1

    .line 8
    .line 9
    iget v4, p0, Lq5/g;->b:I

    .line 10
    .line 11
    mul-int v3, v3, v4

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-ge v5, v4, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0, v5, v1}, Lq5/g;->b(I[B)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_1
    if-ge v6, v0, :cond_3

    .line 26
    .line 27
    aget-byte v7, v1, v6

    .line 28
    .line 29
    and-int/lit16 v7, v7, 0xff

    .line 30
    .line 31
    const/16 v8, 0x40

    .line 32
    .line 33
    if-ge v7, v8, :cond_0

    .line 34
    .line 35
    const/16 v7, 0x23

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/16 v8, 0x80

    .line 39
    .line 40
    if-ge v7, v8, :cond_1

    .line 41
    .line 42
    const/16 v7, 0x2b

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const/16 v8, 0xc0

    .line 46
    .line 47
    if-ge v7, v8, :cond_2

    .line 48
    .line 49
    const/16 v7, 0x2e

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v7, 0x20

    .line 53
    .line 54
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/16 v6, 0xa

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

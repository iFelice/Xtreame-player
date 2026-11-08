.class public abstract Lcom/google/android/gms/internal/ads/PD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/ads/PD;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "The key length in bytes must be 32."

    .line 5
    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    if-eq p3, v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    array-length p3, p1

    .line 14
    if-ne p3, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ND;->d([B)[I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PD;->b:Ljava/lang/Object;

    .line 21
    .line 22
    iput p2, p0, Lcom/google/android/gms/internal/ads/PD;->c:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    array-length p3, p1

    .line 35
    if-ne p3, v2, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/P3;->c([B)[I

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PD;->b:Ljava/lang/Object;

    .line 42
    .line 43
    iput p2, p0, Lcom/google/android/gms/internal/ads/PD;->c:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b([II)[I
.end method

.method public final c(I[B)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/PD;->a:I

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/P3;->c([B)[I

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/PD;->b([II)[I

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, [I

    .line 24
    .line 25
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/P3;->b([I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-ge v0, v2, :cond_0

    .line 30
    .line 31
    aget v4, p1, v0

    .line 32
    .line 33
    aget v5, p2, v0

    .line 34
    .line 35
    add-int/2addr v4, v5

    .line 36
    aput v4, p1, v0

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :pswitch_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ND;->d([B)[I

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/PD;->b([II)[I

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, [I

    .line 72
    .line 73
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ND;->b([I)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_1
    if-ge v0, v2, :cond_1

    .line 78
    .line 79
    aget v4, p1, v0

    .line 80
    .line 81
    aget v5, p2, v0

    .line 82
    .line 83
    add-int/2addr v4, v5

    .line 84
    aput v4, p1, v0

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, p1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 104
    .line 105
    .line 106
    return-object p2

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

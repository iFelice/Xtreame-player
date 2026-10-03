.class public final LN/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, LN/r;->G:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LN/r;->G:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    iput p1, p0, LN/r;->H:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 2

    .line 3
    const/16 v0, 0xa

    iput v0, p0, LN/r;->G:I

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, LN/r;-><init>(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 1

    .line 5
    const/16 p3, 0xc

    iput p3, p0, LN/r;->G:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, LN/r;-><init>(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LN/r;->G:I

    iput p1, p0, LN/r;->H:I

    iput p2, p0, LN/r;->I:I

    return-void
.end method

.method public constructor <init>(IILA0/O;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p3, 0x8

    .line 9
    iput p3, p0, LN/r;->G:I

    .line 10
    iput p1, p0, LN/r;->H:I

    iput p2, p0, LN/r;->I:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x7

    .line 12
    iput p3, p0, LN/r;->G:I

    .line 13
    iput p1, p0, LN/r;->H:I

    iput p2, p0, LN/r;->I:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LN/r;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, LN/r;->H:I

    .line 7
    .line 8
    return v0

    .line 9
    :pswitch_0
    iget v0, p0, LN/r;->H:I

    .line 10
    .line 11
    return v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, LN/r;->I:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x2a

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0x16

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x17

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_0
    const/16 v0, 0xf

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    const/16 v0, 0x10

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    const/16 v0, 0xc

    .line 37
    .line 38
    return v0

    .line 39
    :cond_4
    const/16 v0, 0xb

    .line 40
    .line 41
    return v0

    .line 42
    :cond_5
    const/16 v0, 0xa

    .line 43
    .line 44
    return v0
.end method

.method public final c()Lq5/o;
    .locals 3

    .line 1
    new-instance v0, Lq5/o;

    .line 2
    .line 3
    iget v1, p0, LN/r;->H:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, LN/r;->I:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    invoke-direct {v0, v1, v2}, Lq5/o;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, LN/r;->G:I

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
    const-string v1, "<"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, LN/r;->H:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, LN/r;->I:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x3e

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/vK;->U:I

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->l()Lcom/google/android/gms/internal/ads/dL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/mL;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/mL;-><init>(Lcom/google/android/gms/internal/ads/fL;)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x18

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

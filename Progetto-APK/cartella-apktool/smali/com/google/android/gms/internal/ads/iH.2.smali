.class public final Lcom/google/android/gms/internal/ads/iH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/hH;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hH;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/yH;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 9
    .line 10
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/hH;->c:Lcom/google/android/gms/internal/ads/iH;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string v0, "output"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 1
    add-int v0, p2, p2

    .line 2
    .line 3
    shr-int/lit8 p2, p2, 0x1f

    .line 4
    .line 5
    xor-int/2addr p2, v0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->b0(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(IJ)V
    .locals 3

    .line 1
    add-long v0, p2, p2

    .line 2
    .line 3
    const/16 v2, 0x3f

    .line 4
    .line 5
    shr-long/2addr p2, v2

    .line 6
    xor-long/2addr p2, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hH;->d0(IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->b0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hH;->d0(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->Q(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(ILcom/google/android/gms/internal/ads/XG;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->R(ILcom/google/android/gms/internal/ads/XG;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hH;->U(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final h(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->W(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->S(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hH;->U(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->S(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/ads/bI;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Lcom/google/android/gms/internal/ads/NH;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/hH;->a0(II)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hH;->c:Lcom/google/android/gms/internal/ads/iH;

    .line 10
    .line 11
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/bI;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/iH;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x4

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->a0(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final m(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->W(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hH;->d0(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(ILcom/google/android/gms/internal/ads/bI;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Lcom/google/android/gms/internal/ads/NH;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/hH;->Y(ILcom/google/android/gms/internal/ads/NH;Lcom/google/android/gms/internal/ads/bI;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hH;->S(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->a:Lcom/google/android/gms/internal/ads/hH;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hH;->U(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

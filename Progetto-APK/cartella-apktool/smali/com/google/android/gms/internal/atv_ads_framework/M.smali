.class public final Lcom/google/android/gms/internal/atv_ads_framework/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/atv_ads_framework/L;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/L;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/Z;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 7
    .line 8
    iput-object p0, p1, Lcom/google/android/gms/internal/atv_ads_framework/L;->c:Lcom/google/android/gms/internal/atv_ads_framework/M;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(IJ)V
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
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->U(IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->U(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(IZ)V
    .locals 1

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->K(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e(ILcom/google/android/gms/internal/atv_ads_framework/J;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->M(ILcom/google/android/gms/internal/atv_ads_framework/J;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->P(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final g(II)V
    .locals 1

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    if-ltz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    int-to-long p1, p2

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->V(J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final h(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->N(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->P(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->N(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/atv_ads_framework/w0;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Lcom/google/android/gms/internal/atv_ads_framework/E;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->S(II)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/L;->c:Lcom/google/android/gms/internal/atv_ads_framework/M;

    .line 10
    .line 11
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/atv_ads_framework/w0;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/atv_ads_framework/M;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x4

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->S(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final l(II)V
    .locals 1

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    if-ltz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    int-to-long p1, p2

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->V(J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final m(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->U(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(ILcom/google/android/gms/internal/atv_ads_framework/w0;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Lcom/google/android/gms/internal/atv_ads_framework/E;

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/atv_ads_framework/E;->a(Lcom/google/android/gms/internal/atv_ads_framework/w0;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/google/android/gms/internal/atv_ads_framework/L;->c:Lcom/google/android/gms/internal/atv_ads_framework/M;

    .line 20
    .line 21
    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/atv_ads_framework/w0;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/atv_ads_framework/M;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->N(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->P(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(II)V
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
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/M;->a:Lcom/google/android/gms/internal/atv_ads_framework/L;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

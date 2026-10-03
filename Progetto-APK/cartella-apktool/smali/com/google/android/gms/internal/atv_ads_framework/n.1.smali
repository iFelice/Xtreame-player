.class public final Lcom/google/android/gms/internal/atv_ads_framework/n;
.super Lcom/google/android/gms/internal/atv_ads_framework/o;
.source "SourceFile"


# instance fields
.field public final transient I:I

.field public final transient J:I

.field public final synthetic K:Lcom/google/android/gms/internal/atv_ads_framework/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/o;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->K:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->I:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->J:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->K:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/l;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->I:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->J:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->J:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Cw;->q0(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->I:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->K:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->K:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/l;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->I:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->K:Lcom/google/android/gms/internal/atv_ads_framework/o;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/l;->o()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final p(II)Lcom/google/android/gms/internal/atv_ads_framework/o;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->J:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Cw;->e1(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->I:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    add-int/2addr p2, v0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->K:Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/o;->p(II)Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/n;->J:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/n;->p(II)Lcom/google/android/gms/internal/atv_ads_framework/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.class public final Lcom/google/android/gms/internal/ads/Bz;
.super Lcom/google/android/gms/internal/ads/Ez;
.source "SourceFile"


# instance fields
.field public final synthetic L:Lcom/google/android/gms/internal/ads/Xu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Xu;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bz;->L:Lcom/google/android/gms/internal/ads/Xu;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Ez;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final e(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->I:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Lf/b;->o0(II)V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-ge p1, v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Bz;->L:Lcom/google/android/gms/internal/ads/Xu;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/gms/internal/ads/sz;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/sz;->a(C)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, -0x1

    .line 33
    :goto_1
    return p1
.end method

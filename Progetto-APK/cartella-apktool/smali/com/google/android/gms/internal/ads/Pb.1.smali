.class public final Lcom/google/android/gms/internal/ads/Pb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/zzbsd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pb;->G:Lcom/google/android/gms/internal/ads/zzbsd;

    return-void
.end method


# virtual methods
.method public final O2()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Y()V
    .locals 1

    .line 1
    const-string v0, "Delay close AdMobCustomTabsAdapter overlay."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final r1(I)V
    .locals 0

    .line 1
    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    .line 2
    .line 3
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Pb;->G:Lcom/google/android/gms/internal/ads/zzbsd;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 9
    .line 10
    check-cast p1, La3/b;

    .line 11
    .line 12
    invoke-virtual {p1}, La3/b;->e()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final u3()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v0()V
    .locals 1

    .line 1
    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pb;->G:Lcom/google/android/gms/internal/ads/zzbsd;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 9
    .line 10
    check-cast v0, La3/b;

    .line 11
    .line 12
    invoke-virtual {v0}, La3/b;->k()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

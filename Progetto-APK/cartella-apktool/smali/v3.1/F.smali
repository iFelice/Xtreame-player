.class public final synthetic Lv3/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/QB;


# instance fields
.field public final synthetic G:Lv3/j;


# direct methods
.method public synthetic constructor <init>(Lv3/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv3/F;->G:Lv3/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()LD4/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lv3/F;->G:Lv3/j;

    .line 2
    .line 3
    iget-object v1, v0, Lv3/j;->I:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v6, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "BANNER"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual/range {v0 .. v6}, Lv3/j;->z3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll3/d1;Ll3/b1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/Rg;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Rg;->R:Lcom/google/android/gms/internal/ads/MJ;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, LD4/b;

    .line 26
    .line 27
    return-object v0
.end method

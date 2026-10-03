.class public final Lcom/google/android/gms/internal/ads/L9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lcom/google/android/gms/internal/ads/dg;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Ef;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L9;->G:Lcom/google/android/gms/internal/ads/Ef;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/L9;->G:Lcom/google/android/gms/internal/ads/Ef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->P()V

    return-void
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lk3/l;->A:Lk3/l;

    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 3
    const-string v1, "DefaultGmsgHandlers.attributionReportingManager"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lo3/y;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/L9;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzn()Lp3/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lp3/a;->G:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v2, v1, p1}, Lo3/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lo3/n;->b()LD4/b;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/Gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/rt;

.field public final b:Lcom/google/android/gms/internal/ads/Yv;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/ads/le;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/Yv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gs;->a:Lcom/google/android/gms/internal/ads/rt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gs;->b:Lcom/google/android/gms/internal/ads/Yv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gs;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Gs;->d:Lcom/google/android/gms/internal/ads/le;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gs;->a:Lcom/google/android/gms/internal/ads/rt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rt;->zzb()LD4/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/Sc;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

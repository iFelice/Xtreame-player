.class public final Lcom/google/android/gms/internal/ads/Jt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jC;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jt;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Jt;->d:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jt;->b:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jt;->c:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jt;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/IB;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

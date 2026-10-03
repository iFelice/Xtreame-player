.class public final Lcom/google/android/gms/internal/ads/St;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Nv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Nv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/St;->a:Lcom/google/android/gms/internal/ads/Nv;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/nt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/St;->a:Lcom/google/android/gms/internal/ads/Nv;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nt;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

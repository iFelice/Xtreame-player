.class public final Lcom/google/android/gms/internal/ads/QC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/EE;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/QC;

.field public static final b:Lcom/google/android/gms/internal/ads/zE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/QC;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/QC;->a:Lcom/google/android/gms/internal/ads/QC;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/Dz;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Dz;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/zE;

    .line 15
    .line 16
    const-class v2, Lcom/google/android/gms/internal/ads/eE;

    .line 17
    .line 18
    const-class v3, Lcom/google/android/gms/internal/ads/vC;

    .line 19
    .line 20
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zE;-><init>(Lcom/google/android/gms/internal/ads/AE;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/google/android/gms/internal/ads/QC;->b:Lcom/google/android/gms/internal/ads/zE;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/xc;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/PC;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/PC;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/vC;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/vC;

    return-object v0
.end method

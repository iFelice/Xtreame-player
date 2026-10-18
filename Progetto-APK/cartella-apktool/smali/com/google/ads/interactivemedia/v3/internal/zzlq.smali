.class public Lcom/google/ads/interactivemedia/v3/internal/zzlq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected zza:Lcom/google/ads/interactivemedia/v3/internal/zzlo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlo;

    .line 2
    .line 3
    new-instance v1, LR3/b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlo;->zzi(LR3/a;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

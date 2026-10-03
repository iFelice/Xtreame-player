.class public final Lcom/google/android/gms/internal/ads/Is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;

.field public final d:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Is;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Is;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Is;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Is;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Gs;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Is;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/rt;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Is;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/jj;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jj;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Is;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/gms/internal/ads/jg;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Is;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/google/android/gms/internal/ads/le;

    .line 32
    .line 33
    new-instance v4, Lcom/google/android/gms/internal/ads/Gs;

    .line 34
    .line 35
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Gs;-><init>(Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/Yv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;)V

    .line 36
    .line 37
    .line 38
    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Is;->a()Lcom/google/android/gms/internal/ads/Gs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

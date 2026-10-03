.class public final Lcom/google/android/gms/internal/ads/Fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Io;Lcom/google/android/gms/internal/ads/Ch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fo;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fo;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Eo;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->b:Lcom/google/android/gms/internal/ads/re;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fo;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 12
    .line 13
    check-cast v2, Lcom/google/android/gms/internal/ads/Io;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Io;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/google/android/gms/internal/ads/Qo;

    .line 27
    .line 28
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/Qo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fo;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->B(Lcom/google/android/gms/internal/ads/QJ;)Lcom/google/android/gms/internal/ads/Ag;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v4, Lcom/google/android/gms/internal/ads/Eo;

    .line 42
    .line 43
    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/Eo;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/Qo;Lcom/google/android/gms/internal/ads/EJ;)V

    .line 44
    .line 45
    .line 46
    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fo;->a()Lcom/google/android/gms/internal/ads/Eo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

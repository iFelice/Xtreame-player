.class public final Lcom/google/android/gms/internal/pal/X0;
.super Lcom/google/android/gms/internal/pal/a1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/A0;->b(J)Lcom/google/android/gms/internal/pal/A0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/pal/a1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/pal/A0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/pal/I2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/G2;->G:Lcom/google/android/gms/internal/pal/G2;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/RL;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final G:I

.field public final H:Z


# direct methods
.method public constructor <init>(IIIILcom/google/android/gms/internal/ads/p0;ZLjava/lang/RuntimeException;)V
    .locals 3

    .line 1
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    const-string v0, "AudioTrack init failed "

    .line 6
    .line 7
    const-string v1, " Config("

    .line 8
    .line 9
    const-string v2, ", "

    .line 10
    .line 11
    invoke-static {v0, p1, v1, p2, v2}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, ") "

    .line 16
    .line 17
    invoke-static {p2, p3, v2, p4, v0}, LA0/O;->J(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    if-eq p3, p6, :cond_0

    .line 25
    .line 26
    const-string p3, ""

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p3, " (recoverable)"

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p0, p2, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/ads/RL;->G:I

    .line 42
    .line 43
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/RL;->H:Z

    .line 44
    .line 45
    return-void
.end method

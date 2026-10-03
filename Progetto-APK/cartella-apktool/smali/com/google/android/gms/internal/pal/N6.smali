.class public final Lcom/google/android/gms/internal/pal/N6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/z3;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/O4;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/O4;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/N6;->a:Lcom/google/android/gms/internal/pal/O4;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/pal/N6;->b:I

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    if-lt p2, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/pal/O4;->a(I[B)[B

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 20
    .line 21
    const-string p2, "tag size too small, need at least 10 bytes"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public final a([B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/N6;->a:Lcom/google/android/gms/internal/pal/O4;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/pal/N6;->b:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/pal/O4;->a(I[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.class public final Lcom/google/android/gms/internal/pal/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/p3;


# instance fields
.field public final a:Lm2/i;


# direct methods
.method public constructor <init>(Lm2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/b4;->a:Lm2/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/b4;->a:Lm2/i;

    .line 2
    .line 3
    iget-object v1, v0, Lm2/i;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/pal/A3;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/A3;->b:[B

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length v2, v1

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    iget-object v0, v0, Lm2/i;->I:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/pal/A3;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A3;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/pal/p3;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/pal/p3;->zza([B[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x2

    .line 33
    new-array p2, p2, [[B

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    aput-object v1, p2, v0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object p1, p2, v0

    .line 40
    .line 41
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    const-string p2, "keyset without primary key"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

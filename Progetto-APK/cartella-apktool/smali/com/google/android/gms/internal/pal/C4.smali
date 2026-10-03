.class public final Lcom/google/android/gms/internal/pal/C4;
.super Lcom/google/android/gms/internal/pal/y4;
.source "SourceFile"


# instance fields
.field public final Q:Lcom/google/android/gms/internal/pal/F4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/F4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/C4;->Q:Lcom/google/android/gms/internal/pal/F4;

    .line 5
    .line 6
    return-void
.end method

.method public static I0(Lcom/google/android/gms/internal/pal/F4;Lcom/google/android/gms/internal/pal/r1;Ljava/lang/Integer;)Lcom/google/android/gms/internal/pal/C4;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r1;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p1, v0, :cond_4

    .line 8
    .line 9
    sget-object p1, Lcom/google/android/gms/internal/pal/E4;->e:Lcom/google/android/gms/internal/pal/E4;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 19
    .line 20
    const-string p1, "Cannot create key without ID requirement with format with ID requirement"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    if-nez p2, :cond_3

    .line 30
    .line 31
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/pal/C4;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/pal/C4;-><init>(Lcom/google/android/gms/internal/pal/F4;)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 38
    .line 39
    const-string p1, "Cannot create key with ID requirement with format without ID requirement"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 46
    .line 47
    const-string p1, "Invalid key size"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method


# virtual methods
.method public final synthetic i()Lcom/google/android/gms/internal/pal/y4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C4;->Q:Lcom/google/android/gms/internal/pal/F4;

    .line 2
    .line 3
    return-object v0
.end method

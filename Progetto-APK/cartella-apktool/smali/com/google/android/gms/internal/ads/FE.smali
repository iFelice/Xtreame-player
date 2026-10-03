.class public final Lcom/google/android/gms/internal/ads/FE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IE;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/ads/NG;

.field public final c:Lcom/google/android/gms/internal/ads/XG;

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/ads/xG;

.field public final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/NG;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/FE;->b:Lcom/google/android/gms/internal/ads/NG;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/FE;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/FE;->e:Lcom/google/android/gms/internal/ads/xG;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xG;->K:Lcom/google/android/gms/internal/ads/xG;

    .line 2
    .line 3
    if-ne p3, v0, :cond_1

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 9
    .line 10
    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :cond_1
    if-eqz p4, :cond_2

    .line 17
    .line 18
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/NE;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/NG;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v7, Lcom/google/android/gms/internal/ads/FE;

    .line 23
    .line 24
    move-object v0, v7

    .line 25
    move-object v1, p0

    .line 26
    move-object v3, p1

    .line 27
    move v4, p2

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p4

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/FE;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/NG;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    return-object v7

    .line 34
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

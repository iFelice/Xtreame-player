.class public final Lcom/google/android/gms/internal/ads/MG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/FC;


# static fields
.field public static final e:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jF;

.field public final b:I

.field public final c:[B

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/MG;->e:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Kq;I)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->a:Lcom/google/android/gms/internal/ads/jF;

    iput p2, p0, Lcom/google/android/gms/internal/ads/MG;->b:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/MG;->c:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/MG;->d:[B

    new-array v0, v0, [B

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Kq;->a(I[B)[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/OE;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/KG;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/OE;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/KG;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/MG;->a:Lcom/google/android/gms/internal/ads/jF;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/OE;->l:Lcom/google/android/gms/internal/ads/RE;

    iget v1, v0, Lcom/google/android/gms/internal/ads/RE;->b:I

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/ads/MG;->b:I

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/OE;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->c:[B

    .line 9
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/RE;->c:Lcom/google/android/gms/internal/ads/QE;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/QE;->d:Lcom/google/android/gms/internal/ads/QE;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/MG;->e:[B

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->d:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->d:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/WE;)V
    .locals 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Kq;

    .line 13
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/WE;->l:Lcom/google/android/gms/internal/ads/aF;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aF;->d:Lcom/google/android/gms/internal/ads/YE;

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/WE;->m:Lcom/google/android/gms/internal/ads/Xu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 17
    check-cast v3, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v3

    .line 18
    const-string v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Kq;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/MG;->a:Lcom/google/android/gms/internal/ads/jF;

    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/WE;->l:Lcom/google/android/gms/internal/ads/aF;

    iget v1, v0, Lcom/google/android/gms/internal/ads/aF;->b:I

    .line 20
    iput v1, p0, Lcom/google/android/gms/internal/ads/MG;->b:I

    .line 21
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/WE;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->c:[B

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/ZE;->d:Lcom/google/android/gms/internal/ads/ZE;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aF;->c:Lcom/google/android/gms/internal/ads/ZE;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/MG;->e:[B

    const/4 v0, 0x1

    .line 23
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->d:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MG;->d:[B

    return-void
.end method

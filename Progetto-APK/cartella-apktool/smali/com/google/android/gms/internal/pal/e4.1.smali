.class public final Lcom/google/android/gms/internal/pal/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/d4;

.field public final b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/pal/e4;->d:[B

    return-void
.end method

.method public constructor <init>([B[B[BLjava/math/BigInteger;Lcom/google/android/gms/internal/pal/d4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/e4;->c:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/google/android/gms/internal/pal/e4;->b:Ljava/math/BigInteger;

    iput-object p5, p0, Lcom/google/android/gms/internal/pal/e4;->a:Lcom/google/android/gms/internal/pal/d4;

    return-void
.end method

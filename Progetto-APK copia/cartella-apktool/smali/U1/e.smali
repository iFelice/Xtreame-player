.class public final LU1/e;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final G:I

.field public final H:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "callbackName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/a;->f(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, LU1/e;->G:I

    .line 10
    .line 11
    iput-object p2, p0, LU1/e;->H:Ljava/lang/Throwable;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, LU1/e;->H:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

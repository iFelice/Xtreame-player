.class public final Lm0/o0;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lm0/o0;
    .locals 1

    .line 1
    instance-of v0, p0, Lm0/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lm0/o0;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lm0/o0;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

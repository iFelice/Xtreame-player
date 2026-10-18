.class public final LD0/q;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final G:Lm0/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm0/t;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, LD0/q;->G:Lm0/t;

    return-void
.end method

.method public constructor <init>(Ln0/f;Lm0/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, LD0/q;->G:Lm0/t;

    return-void
.end method

.class public final Lq5/b;
.super Lq5/l;
.source "SourceFile"


# static fields
.field public static final I:Lq5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq5/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq5/b;->I:Lq5/b;

    .line 7
    .line 8
    sget-object v1, Lq5/l;->H:[Ljava/lang/StackTraceElement;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static a()Lq5/b;
    .locals 1

    .line 1
    sget-boolean v0, Lq5/l;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq5/b;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v0, Lq5/b;->I:Lq5/b;

    .line 12
    .line 13
    return-object v0
.end method

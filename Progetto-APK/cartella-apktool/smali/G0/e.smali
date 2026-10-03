.class public final LG0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LG0/i;


# direct methods
.method public synthetic constructor <init>(LG0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/e;->a:LG0/i;

    return-void
.end method

.method public synthetic constructor <init>(LG0/i;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, LG0/e;-><init>(LG0/i;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, LG0/e;-><init>(LG0/i;)V

    return-void
.end method

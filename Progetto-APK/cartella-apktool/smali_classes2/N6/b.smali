.class public abstract LN6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, LA0/O;->E()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lu6/n;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, v0, v2}, Lu6/n;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    instance-of v0, v1, LH6/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, LH6/a;

    .line 22
    .line 23
    invoke-direct {v0, v1}, LH6/a;-><init>(Lu6/n;)V

    .line 24
    .line 25
    .line 26
    move-object v1, v0

    .line 27
    :goto_0
    invoke-static {v1}, LH6/e;->N(LH6/c;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, LN6/b;->a:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

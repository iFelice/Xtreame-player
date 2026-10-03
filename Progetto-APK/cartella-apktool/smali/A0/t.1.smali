.class public final LA0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:LA0/h0;

.field public final synthetic c:LA0/U;

.field public final synthetic d:LA0/x;


# direct methods
.method public constructor <init>(LA0/x;Ljava/util/concurrent/Executor;Lm0/r0;LA0/h0;LA0/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/t;->d:LA0/x;

    .line 5
    .line 6
    iput-object p2, p0, LA0/t;->a:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p4, p0, LA0/t;->b:LA0/h0;

    .line 9
    .line 10
    iput-object p5, p0, LA0/t;->c:LA0/U;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/t;->d:LA0/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, LA0/q;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, v0, v2}, LA0/q;-><init>(LA0/x;I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iget-object v2, p0, LA0/t;->b:LA0/h0;

    .line 14
    .line 15
    invoke-virtual {v2, v1, v0}, LA0/h0;->f(LA0/g0;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.class public interface abstract LC2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC2/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LC2/v;

    .line 2
    .line 3
    invoke-direct {v0}, LC2/v;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LC2/x;

    .line 7
    .line 8
    iget-object v0, v0, LC2/v;->a:Ljava/util/Map;

    .line 9
    .line 10
    invoke-direct {v1, v0}, LC2/x;-><init>(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, LC2/u;->a:LC2/x;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method

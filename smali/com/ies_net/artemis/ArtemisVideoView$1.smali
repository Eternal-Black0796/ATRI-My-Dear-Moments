.class Lcom/ies_net/artemis/ArtemisVideoView$1;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ies_net/artemis/ArtemisVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisVideoView;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "width",
            "height"
        }
    .end annotation

    .line 303
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$002(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 304
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$102(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 305
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/ies_net/artemis/ArtemisVideoView$1;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p3}, Lcom/ies_net/artemis/ArtemisVideoView;->access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

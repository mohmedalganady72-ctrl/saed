import 'package:flutter/material.dart';

// class SvgDrawLoader extends StatefulWidget {
//   final double size;
//   final Color color;
//   final Duration duration;

//   const SvgDrawLoader({
//     super.key,
//     this.size = 50,
//     this.color = Colors.white,
//     this.duration = const Duration(seconds: 2),
//   });

//   @override
//   State<SvgDrawLoader> createState() => _SvgDrawLoaderState();
// }

// class _SvgDrawLoaderState extends State<SvgDrawLoader>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: widget.duration,
//     )..repeat(); // تكرار مستمر
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: widget.size,
//       height: widget.size,
//       child: AnimatedBuilder(
//         animation: _controller,
//         builder: (_, __) {
//           return CustomPaint(
//             painter: _SvgDrawPainter(
//               progress: _controller.value,
//               color: widget.color,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class _SvgDrawPainter extends CustomPainter {
//   final double progress; // من 0 → 1
//   final Color color;

//   _SvgDrawPainter({required this.progress, required this.color});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;

//     final path = buildIconPath();

//     // تحجيم المسار إلى حجم الـ Widget
//     final matrix4 = Matrix4.identity();
//     final scaleX = size.width / 35;
//     final scaleY = size.height / 30;
//     matrix4.scale(scaleX, scaleY);
//     final scaledPath = path.transform(matrix4.storage);

//     // استخراج جزء من المسار حسب التقدم
//     final metrics = scaledPath.computeMetrics();
//     for (final metric in metrics) {
//       final extract = metric.extractPath(0, metric.length * progress);
//       canvas.drawPath(extract, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(covariant _SvgDrawPainter oldDelegate) =>
//       oldDelegate.progress != progress;
// }

// // مسار الأيقونة نفسه
// Path buildIconPath() {
//   return Path()
//     ..moveTo(17.5, 30)
//     ..lineTo(6.36364, 23.6667)
//     ..lineTo(6.36364, 13.6667)
//     ..lineTo(0, 10)
//     ..lineTo(17.5, 0)
//     ..lineTo(35, 10)
//     ..lineTo(35, 23.3333)
//     ..lineTo(31.8182, 23.3333)
//     ..lineTo(31.8182, 11.8333)
//     ..lineTo(28.6364, 13.6667)
//     ..lineTo(28.6364, 23.6667)
//     ..lineTo(17.5, 30)
//     ..close()
//     ..moveTo(17.5, 16.1667)
//     ..lineTo(28.3977, 10)
//     ..lineTo(17.5, 3.83333)
//     ..lineTo(6.60227, 10)
//     ..lineTo(17.5, 16.1667)
//     ..close()
//     ..moveTo(17.5, 26.2083)
//     ..lineTo(25.4545, 21.7083)
//     ..lineTo(25.4545, 15.4167)
//     ..lineTo(17.5, 20)
//     ..lineTo(9.54545, 15.4167)
//     ..lineTo(9.54545, 21.7083)
//     ..lineTo(17.5, 26.2083)
//     ..close();
// }

class SvgDrawLoader extends StatefulWidget {
  final double size;
  final Color color;
  final Duration duration;

  const SvgDrawLoader({
    super.key,
    this.size = 50,
    this.color = Colors.white,
    this.duration = const Duration(seconds: 2),
  });

  @override
  State<SvgDrawLoader> createState() => _SvgDrawLoaderState();
}

class _SvgDrawLoaderState extends State<SvgDrawLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, __) => CustomPaint(
            painter: _SvgDrawPainter(
              progress: _controller.value,
              color: widget.color,
              size: Size(widget.size, widget.size),
            ),
          ),
        ),
      ),
    );
  }
}

class _SvgDrawPainter extends CustomPainter {
  final double progress;
  final Color color;
  final Path _scaledPath;
  final Paint _paint;

  _SvgDrawPainter({
    required this.progress,
    required this.color,
    required Size size,
  })  : _paint = Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
        _scaledPath = buildIconPath().transform(
          (Matrix4.identity()..scale(size.width / 35, size.height / 30))
              .storage,
        );

//         final matrix = Matrix4.identity();
// matrix.scale(size.width / 35, size.height / 30);
// _scaledPath = buildIconPath().transform(matrix.storage);

  @override
  void paint(Canvas canvas, Size size) {
    for (final metric in _scaledPath.computeMetrics()) {
      final extract = metric.extractPath(0, metric.length * progress);
      canvas.drawPath(extract, _paint);
    }
  }

  @override
  bool shouldRepaint(covariant _SvgDrawPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

// نفس مسار الأيقونة
Path buildIconPath() {
  return Path()
    ..moveTo(17.5, 30)
    ..lineTo(6.36364, 23.6667)
    ..lineTo(6.36364, 13.6667)
    ..lineTo(0, 10)
    ..lineTo(17.5, 0)
    ..lineTo(35, 10)
    ..lineTo(35, 23.3333)
    ..lineTo(31.8182, 23.3333)
    ..lineTo(31.8182, 11.8333)
    ..lineTo(28.6364, 13.6667)
    ..lineTo(28.6364, 23.6667)
    ..lineTo(17.5, 30)
    ..close()
    ..moveTo(17.5, 16.1667)
    ..lineTo(28.3977, 10)
    ..lineTo(17.5, 3.83333)
    ..lineTo(6.60227, 10)
    ..lineTo(17.5, 16.1667)
    ..close()
    ..moveTo(17.5, 26.2083)
    ..lineTo(25.4545, 21.7083)
    ..lineTo(25.4545, 15.4167)
    ..lineTo(17.5, 20)
    ..lineTo(9.54545, 15.4167)
    ..lineTo(9.54545, 21.7083)
    ..lineTo(17.5, 26.2083)
    ..close();
}
